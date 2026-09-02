# カスタムEffectシステム 利用ガイド

この文書は、Ultimagica Tomeの実装を知らない開発者が、Minecraft Java Edition 26.1.2でカスタムEffectを作成・付与・解除できるようになることを目的としています。

## 1. Effectシステムとは

Effectは、プレイヤーへ一定時間だけ状態や処理を追加する仕組みです。バフ、デバフ、継続ダメージ、行動制限などを実装できます。

各EffectはObjectと同様に、次の要素で構成されます。

- `register`: ID、効果時間、Field、継承関係などの定義
- `given`: 付与時に呼ばれるメソッド
- `tick`: Effectが有効な間、毎tick呼ばれるメソッド
- `end`: 効果時間が0になったときに呼ばれるメソッド
- `remove`: 明示的な解除や終了時の後片付けを行うメソッド

Effectの定義は、すべて次のディレクトリへ配置します。

```text
data/asset/function/effect/<Effect ID>/
```

現在のディスパッチ処理は`asset:effect/<ID>/...`を呼び出すため、定義側の名前空間は`asset`を使用してください。

## 2. 最短でEffectを作る

ここでは、移動速度を20%上昇させ、10秒後に解除される`example.speed`を作ります。

### 2.1 ディレクトリ構成

```text
data/asset/function/effect/example.speed/
├─ register.mcfunction
├─ given/
│  ├─ .mcfunction
│  └─ apply.m.mcfunction
└─ remove/
   └─ .mcfunction
```

メソッド本体のファイル名は`.mcfunction`です。たとえば`given`メソッドは`given/.mcfunction`に置きます。

### 2.2 registerを書く

`data/asset/function/effect/example.speed/register.mcfunction`:

```mcfunction
#> asset:effect/example.speed/register
# 移動速度上昇Effectの継承関係と既定値を登録する。

data modify storage asset:effect Extends append value "abstract.effect"
function asset:effect/_extends/

data modify storage asset:effect IsAbstract set value false
data modify storage asset:effect ID set value "example.speed"

data modify storage asset:effect Duration set value 200
data modify storage asset:effect Stacks set value 1
data modify storage asset:effect Groups set value ["buff"]
data modify storage asset:effect Reapply set value "refresh"
data modify storage asset:effect MaxStacks set value 1
data modify storage asset:effect Field set value {Amount:0.2d}
```

Minecraftは毎秒20tickなので、`Duration:200`は約10秒です。

### 2.3 givenを書く

`data/asset/function/effect/example.speed/given/.mcfunction`:

```mcfunction
#> asset:effect/example.speed/given/
# FieldのAmountを使って移動速度Modifierを設定する。

attribute @s movement_speed modifier remove example:speed
function asset:effect/example.speed/given/apply.m with storage asset:context this
```

`data/asset/function/effect/example.speed/given/apply.m.mcfunction`:

```mcfunction
#> asset:effect/example.speed/given/apply.m
# Amountを属性Modifierの値として適用する。

$attribute @s movement_speed modifier add example:speed $(Amount) add_multiplied_base
```

Effect固有のFieldは、メソッド内では`storage asset:context this`に入っています。

### 2.4 removeを書く

`data/asset/function/effect/example.speed/remove/.mcfunction`:

```mcfunction
#> asset:effect/example.speed/remove/
# 移動速度Modifierを削除する。

attribute @s movement_speed modifier remove example:speed
```

`end`を省略すると、親の`abstract.effect/end`が呼ばれ、最終的にこの`remove`が呼ばれます。

### 2.5 付与する

コマンドや別のfunctionから、対象プレイヤーを`@s`として実行します。

```mcfunction
execute as @a run function api:effect/give.m {ID:"example.speed"}
```

Fieldを上書きする場合:

```mcfunction
execute as @a run function api:effect/give_with.m {ID:"example.speed",Field:{Amount:0.35d}}
```

解除する場合:

```mcfunction
execute as @a run function api:effect/remove.m {ID:"example.speed"}
```

## 3. registerの項目

registerで使用できる値は次のとおりです。

| 項目 | 型 | 意味 |
|---|---|---|
| `Extends` | stringのlist | 継承する親EffectのID |
| `IsAbstract` | boolean | `true`なら直接付与できない抽象Effect |
| `ID` | string | Effectの一意なID。ディレクトリ名と一致させる |
| `Duration` | int | 既定の効果時間。単位はtick |
| `Stacks` | int | 初回付与時のスタック数 |
| `Groups` | stringのlist | `clear_group`で使用する分類 |
| `Reapply` | string | 同じIDを再付与したときの動作 |
| `MaxStacks` | int | `Reapply:"stack"`のスタック上限 |
| `Field` | compound | Effect固有の永続データ |

`abstract.effect`を継承すると、次の既定値を引き継ぎます。

```snbt
{
  Duration: 1,
  Stacks: 1,
  Groups: [],
  Reapply: "refresh",
  MaxStacks: 1,
  Field: {}
}
```

親を登録したあと、子側で必要な値を上書きしてください。

```mcfunction
data modify storage asset:effect Extends append value "abstract.effect"
function asset:effect/_extends/

# 親の値を上書きする定義は、この後に書く。
data modify storage asset:effect Duration set value 100
```

### Durationの値

- `1..`: 指定tick数だけ持続します。
- `0`: `given`を呼んだ直後に`end`へ進みます。
- `-1`: 無期限です。明示的に解除されるまで残ります。
- `-2`以下: 不正な入力として付与に失敗します。

## 4. 共通データとField

Effectのデータは、共通データとEffect固有のFieldに分かれています。

保存されるEffectは、おおむね次の形です。

```snbt
{
  ID: "example.speed",
  Duration: 200,
  Age: 0,
  Stacks: 1,
  Groups: ["buff"],
  Reapply: "refresh",
  MaxStacks: 1,
  Field: {
    Amount: 0.2d
  }
}
```

メソッド実行中は、共通データが`asset:context`直下、Fieldが`asset:context this`へ展開されます。

```text
storage asset:context Duration
storage asset:context Age
storage asset:context Stacks
storage asset:context Groups
storage asset:context Reapply
storage asset:context MaxStacks
storage asset:context Reason
storage asset:context Reapplied

storage asset:context this
```

たとえば、効果時間を100tickへ変更する場合:

```mcfunction
data modify storage asset:context Duration set value 100
```

Fieldの`Power`を変更する場合:

```mcfunction
data modify storage asset:context this.Power set value 3
```

次のように、共通データをFieldの中へ入れないでください。

```mcfunction
# 誤り
data modify storage asset:context this.Duration set value 100

# 正しい
data modify storage asset:context Duration set value 100
```

### メソッド内で参照できる値

| パス | 型 | 説明 | 変更の保存 |
|---|---|---|---|
| `asset:context id` | string | 現在ディスパッチ中のEffectまたは親EffectのID | 内部用 |
| `asset:context originID` | string | 実際に付与された元のEffect ID | 内部用 |
| `asset:context method` | string | 現在のメソッド名 | 内部用 |
| `asset:context this` | compound | Effect固有のField | 保存される |
| `asset:context Duration` | int | 残り時間 | 保存される |
| `asset:context Age` | int | 付与後の経過tick | 保存される |
| `asset:context Stacks` | int | 現在のスタック数 | 保存される |
| `asset:context Groups` | list | 現在のグループ | 保存される |
| `asset:context Reapply` | string | 現在の再付与設定 | 保存される |
| `asset:context MaxStacks` | int | スタック上限 | 保存される |
| `asset:context Reason` | string | 終了・解除理由 | 一時値 |
| `asset:context Reapplied` | boolean | 再付与による`given`かどうか | 一時値 |

`Reason`と`Reapplied`は判定用です。永続データとして書き換える用途には使用しないでください。

## 5. ライフサイクル

通常の流れは次のとおりです。

```text
付与
  → register
  → given
  → tick
  → Ageを1増加
  → Durationを1減少
  → tickを繰り返す
  → Durationが0
  → end
  → abstract.effect/end経由でremove
```

明示的に解除された場合は、`end`を通らず`remove`が呼ばれます。

### given

次の場合に呼ばれます。

- 初めて付与されたとき
- `refresh`、`extend`、`stack`で再付与されたとき

属性Modifier、タグ、スコアなど、Effect開始時に必要な状態を設定します。

再付与による呼び出しかは、次のように判定できます。

```mcfunction
execute if data storage asset:context {Reapplied:true} run function example:effect/reapplied
execute unless data storage asset:context {Reapplied:true} run function example:effect/first_given
```

### tick

Effectが有効な間、プレイヤーごとに毎tick呼ばれます。`tick`の実行後に`Age`が増え、`Duration`が減ります。

現在は組み込みのTickIntervalはありません。一定間隔で処理したい場合は、`Age`や独自Fieldを使ってメソッド側で判定してください。

`tick`内で`Duration`を変更した場合、その変更後の値に対して同じtickの減算処理が行われます。

### end

`Duration`が0になったときに呼ばれます。このとき`asset:context Reason`は`"expired"`です。

`abstract.effect/end`は元のEffectの`remove`を呼びます。子Effectで`end`を独自実装する場合、後片付けも実行したいなら親の`end`を明示的に呼んでください。

```mcfunction
# 独自の終了処理
particle minecraft:poof ~ ~1 ~ 0.2 0.2 0.2 0 5

# 親のendを呼び、最終的にremoveへ進める
function asset:effect/super.end
```

### remove

Effectの終了時に、付与したModifier、タグ、スコアなどを元へ戻します。

`asset:context Reason`には次のいずれかが入ります。

| 値 | 理由 |
|---|---|
| `"expired"` | Durationが0になり、親のendからremoveが呼ばれた |
| `"removed"` | ID指定で解除された |
| `"self"` | Effect自身が`remove_this`を要求した |
| `"cleared"` | 全Effectが一括解除された |
| `"group_cleared"` | グループ指定で解除された |
| `"replaced"` | `Reapply:"replace"`で置き換えられた |

removeは複数の経路から呼ばれるため、何度呼ばれても安全な処理にしてください。たとえば属性Modifierは、追加前にも削除し、removeでも削除する設計が安全です。

## 6. Reapply

`Reapply`は、同じIDのEffectが既に存在するときの処理を指定します。使用できる値は、完全一致の小文字で次の5種類です。

| 値 | 動作 | `given` |
|---|---|---|
| `"refresh"` | Durationを新しい値へ戻し、Ageを0にする。Groups、Reapply、MaxStacks、Fieldも新しい付与内容へ置き換える | 呼ぶ |
| `"extend"` | 現在のDurationへ新しいDurationを加算する。Ageは維持する。Groups、Reapply、MaxStacks、Fieldは新しい内容へ置き換える | 呼ぶ |
| `"stack"` | Stacksを1増やしてMaxStacks以下に制限する。Durationを新しい値へ戻してAgeを0にし、Groups、Reapply、MaxStacks、Fieldも更新する | 呼ぶ |
| `"replace"` | 既存Effectを`Reason:"replaced"`でremoveし、新しいインスタンスを作る | 新規付与として呼ぶ |
| `"ignore"` | 再付与要求を無視して既存Effectをそのまま残す | 呼ばない |

`refresh`、`extend`、`stack`では、`given`の間だけ`asset:context Reapplied`が`true`になります。

`Duration:-1`は無期限です。`extend`では、現在または新しいDurationが無期限なら結果も無期限になります。

再付与方式は、新しい付与要求を作る際にregisterから読み込んだ`Reapply`で決まります。registerには必ず上記5種類のいずれかを設定してください。不正な値にはフォールバックがありません。

## 7. 継承と抽象Effect

共通処理は抽象Effectへまとめられます。

抽象Effectのregister例:

```mcfunction
#> asset:effect/abstract.example/register
# サンプルEffect群の共通定義を登録する。

data modify storage asset:effect Extends append value "abstract.effect"
function asset:effect/_extends/

data modify storage asset:effect IsAbstract set value true
data modify storage asset:effect ID set value "abstract.example"
data modify storage asset:effect Groups set value ["example"]
data modify storage asset:effect Field set value {Power:1}
```

子Effectのregister例:

```mcfunction
data modify storage asset:effect Extends append value "abstract.example"
function asset:effect/_extends/

data modify storage asset:effect IsAbstract set value false
data modify storage asset:effect ID set value "example.child"
data modify storage asset:effect Duration set value 100
data modify storage asset:effect Field.Power set value 2
```

`IsAbstract:true`のEffectは直接付与できません。

### メソッド解決

子Effectに対象メソッドが存在すれば、子の実装が呼ばれます。存在しなければ、登録された親Effectから同名メソッドを探します。

子から親の処理も呼びたい場合は、次のヘルパーを使用します。

```mcfunction
function asset:effect/super.given
function asset:effect/super.tick
function asset:effect/super.end
function asset:effect/super.remove
function asset:effect/super.method
```

`super.method`は、現在選択されているメソッド名で親を呼びます。

### 任意のメソッドを呼ぶ

Effectには`given`、`tick`、`end`、`remove`以外のメソッドも作成できます。

たとえば`asset:effect/example.child/reset/.mcfunction`を作った場合、元のEffectに対して次のように呼び出せます。

```mcfunction
function asset:effect/call.m {method:"reset"}
```

## 8. 公開API

すべてのプレイヤー向けAPIは、対象プレイヤーを`@s`として実行してください。

| API | 用途 |
|---|---|
| `api:effect/give` | storage入力でEffectを付与する |
| `api:effect/give.m` | IDをマクロ引数で指定して付与する |
| `api:effect/give_with.m` | IDとFieldをマクロ引数で指定して付与する |
| `api:effect/remove` | storage入力で指定IDを解除する |
| `api:effect/remove.m` | IDをマクロ引数で指定して解除する |
| `api:effect/remove_this` | メソッド内から現在のEffect自身を解除する |
| `api:effect/clear` | 全Effectを解除する |
| `api:effect/clear_group` | storage入力で指定グループを解除する |
| `api:effect/clear_group.m` | グループをマクロ引数で指定して解除する |
| `api:effect/get` | 指定IDのEffectデータを取得する |
| `api:effect/has` | 指定IDのEffectが存在するか判定する |
| `api:effect/list` | 全Effectの一覧を取得する |

### api:effect/give

storage経由でEffectを付与します。

入力:

```text
storage api: in.ID                string、必須
storage api: in.FieldOverride     compound、省略可
storage api: in.DurationOverride  int、省略可
```

出力:

```text
storage api: out.EffectResult  boolean
functionの返り値              1=要求成功、0=失敗
```

使用例:

```mcfunction
data modify storage api: in.ID set value "example.speed"
data modify storage api: in.FieldOverride set value {Amount:0.4d}
data modify storage api: in.DurationOverride set value 100
function api:effect/give
```

`api:effect/give`は処理後に、この3つの入力を削除します。

### api:effect/give.m

```mcfunction
function api:effect/give.m {ID:"example.speed"}
```

`storage api: in.FieldOverride`と`storage api: in.DurationOverride`が既に存在する場合は、その値も使用します。このマクロ版は両Overrideを削除しないため、一時的に設定した場合は呼び出し側で削除してください。

```mcfunction
data modify storage api: in.DurationOverride set value 100
function api:effect/give.m {ID:"example.speed"}
data remove storage api: in.DurationOverride
```

### api:effect/give_with.m

```mcfunction
function api:effect/give_with.m {ID:"example.speed",Field:{Amount:0.4d}}
```

指定したFieldは、registerで作られた既定Fieldへmergeされます。再付与時は、完成した新しいFieldが既存Fieldを置き換えます。

`storage api: in.DurationOverride`が既に存在する場合は、その値も使用され、呼び出し後も残ります。一時的に設定した場合は呼び出し側で削除してください。

### api:effect/remove / remove.m

```mcfunction
data modify storage api: in.ID set value "example.speed"
function api:effect/remove

function api:effect/remove.m {ID:"example.speed"}
```

指定IDのEffectを解除し、`remove`を呼び出します。

### api:effect/remove_this

Effectメソッド内から、現在のEffect自身を解除します。

```mcfunction
execute if data storage asset:context this{ShouldRemove:true} run function api:effect/remove_this
```

解除は安全なタイミングで処理され、`remove`の`Reason`は`"self"`になります。Effectメソッド外からは使用できません。

### api:effect/clear

```mcfunction
function api:effect/clear
```

対象プレイヤーの全Effectを解除します。それぞれの`remove`が呼ばれます。

### api:effect/clear_group / clear_group.m

```mcfunction
data modify storage api: in.Group set value "debuff"
function api:effect/clear_group

function api:effect/clear_group.m {Group:"debuff"}
```

`Groups`に指定文字列を含むEffectだけを解除します。

### api:effect/get

```mcfunction
data modify storage api: in.ID set value "example.speed"
function api:effect/get
```

出力:

```text
storage api: out.EffectFound  boolean
storage api: out.Effect       Effect compound。見つからない場合は存在しない
```

### api:effect/has

```mcfunction
data modify storage api: in.ID set value "example.speed"
function api:effect/has
```

`storage api: out.EffectFound`とfunctionの返り値で存在を確認できます。詳細なEffectデータは返しません。

### api:effect/list

```mcfunction
function api:effect/list
data get storage api: out.Effects
```

`storage api: out.Effects`へ、対象プレイヤーが持つ全Effectのスナップショットを書き出します。

### API storageの注意

`storage api: in`と`storage api: out`は共有ストレージです。呼び出し直前に必要な入力を設定し、出力は次のAPI呼び出しより前に読み取ってください。APIごとに削除する入力が異なるため、不要になった一時入力は呼び出し側でも削除するのが安全です。

## 9. Effectメソッド内からAPIを呼ぶ

Effectの走査中に付与・解除APIを呼んでも、Effect一覧を直接変更しません。操作要求はキューへ追加され、現在の走査が終わってから順番に反映されます。

```mcfunction
# tick内で別のEffectを付与する
function api:effect/give.m {ID:"example.other"}

# tick内で自分自身を解除する
function api:effect/remove_this
```

この仕組みにより、tick中の一覧変更でEffectを飛ばしたり、同じEffectを二重処理したりする問題を避けています。

## 10. 動作確認

1. Minecraftで`/reload`を実行します。
2. 対象プレイヤーとしてEffectを付与します。
3. `api:effect/get`または`api:effect/list`で保存状態を確認します。
4. 効果時間終了時と明示解除時の両方で、Modifierやタグが残らないことを確認します。

例:

```mcfunction
execute as @p run function api:effect/give.m {ID:"example.speed"}
execute as @p run function api:effect/list
data get storage api: out.Effects
execute as @p run function api:effect/remove.m {ID:"example.speed"}
```

## 11. よくある問題

### Effectが付与されない

- registerの`ID`とディレクトリ名が一致しているか確認してください。
- `data/asset/function/effect/<ID>/register.mcfunction`が存在するか確認してください。
- `IsAbstract`が`true`になっていないか確認してください。
- APIをプレイヤーを`@s`として実行しているか確認してください。
- `Duration`が`-2`以下になっていないか確認してください。

### メソッドが呼ばれない

- `given.mcfunction`ではなく`given/.mcfunction`になっているか確認してください。
- メソッドディレクトリとファイル名の大文字・小文字を確認してください。
- 親のregisterを呼ぶ前に`Extends`へ親IDを追加しているか確認してください。

### 効果終了後もModifierやタグが残る

- `remove/.mcfunction`で必ず後片付けしてください。
- 独自の`end/.mcfunction`を書いた場合は、必要に応じて`function asset:effect/super.end`を呼んでください。
- `remove`を何度呼んでも安全な実装にしてください。

### Fieldの変更が保存されない

Effect固有データは`asset:context this`を変更してください。

```mcfunction
data modify storage asset:context this.Power set value 2
```

`asset:effect Field`はregister中の作業領域であり、メソッド実行中のインスタンスデータではありません。

### Durationの変更が反映されない

メソッド内では、次のように`asset:context`直下を変更してください。

```mcfunction
data modify storage asset:context Duration set value 100
```

`asset:context this.Duration`や`asset:effect Duration`ではありません。

### 再付与時だけ処理を変えたい

`given`内で`Reapplied:true`を判定してください。

```mcfunction
execute if data storage asset:context {Reapplied:true} run function example:reapply
```

## 12. 現在の仕様上の制限

- 同じプレイヤーに同じIDのEffectを複数インスタンスとして保持することはできません。再付与として扱われます。
- Effect定義の名前空間は`asset`です。
- tickメソッドは毎tick呼ばれます。組み込みのTickIntervalはありません。
- `Reapply`の不正値に対するフォールバックはありません。
- `FieldOverride`はregisterのFieldへmergeされますが、再付与時は既存Fieldへの差分mergeではなく、新しく構築したFieldへの置き換えです。

## 13. 実装場所

主な実装は次のディレクトリにあります。

```text
data/api/function/effect/                 公開API
data/asset/function/effect/               Effect定義、継承用ヘルパー
data/asset_manager/function/effect/       registerとメソッドディスパッチ
data/player_manager/function/effect/      保存、tick、操作キュー、ライフサイクル
```

実例として、次のEffectも参照できます。

```text
data/asset/function/effect/movement_speed_up/
data/asset/function/effect/movement_speed_down/
```
