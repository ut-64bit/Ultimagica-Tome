#> player:skill/load
#
# 個別のスキル定義をplayer_manager:loadout registry.skillへ追加する。
# 効果はplayer:skill/<id>/applyに実装する。固有スキルと通常スキルで共用する。
#
# 定義形式:
# 表示名: ut_magic.skill.<id>
# descriptionにはホバー表示するテキストコンポーネントを指定する。
# skill_capacity_bonusを指定すると、クラス変更時のコスト上限検証にも加算される。
# conflictsに同時選択できないスキルIDを指定する。片側だけの指定でも双方向に競合する。
# data modify storage player_manager:loadout registry.skill append value {id:"tag_spear_damage",description:{text:"槍系の魔法を強化する",color:"gray"},cost:3,skill_capacity_bonus:0,conflicts:[{id:"other_skill"}]}

# タグ強化
data modify storage player_manager:loadout registry.skill append value {id:"tag_spear_damage",description:[{text:"槍のダメージを20%増加する",color:"gray"},"\n\n槍は、帝国戦争以前の戦場で広く使われていた武器\n防御術式の発展と共に廃れていったが 様々な奇跡や祈祷の中に、その痕跡は残っている"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"tag_explosion_damage",description:[{text:"爆発のダメージを20%増加する",color:"gray"},"\n\nエクスプローーージョン！"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"tag_ground_damage",description:[{text:"地面からの攻撃のダメージを20%増加する",color:"gray"},""],cost:3}

# 系統強化（各系統の与ダメージ1.15倍）
data modify storage player_manager:loadout registry.skill append value {id:"school_saint_damage",description:[{text:"退魔の奇跡の攻撃を15%強化する",color:"gray"},"\n\n退魔の奇跡は、魔族戦争の末期に出現し 終結と共に失われていった\n魔族戦争の英雄である「聖女」が使ったとされ 物事をあるべき形に戻す、特別な力を持つ"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_holy_damage",description:{text:"聖教会の祈祷の攻撃を15%強化する",color:"gray"},cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_star_damage",description:[{text:"星詠みの魔術の攻撃を15%強化する",color:"gray"},"\n\n星詠みの魔術は、祈祷の研究の末に生まれた\nしかし、その誕生は望まれたものではなく 星詠みの長い旅の始まりだった"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_crystal_mastery",description:[{text:"結晶魔術の射程/持続時間+50%",color:"gray"},"\n\n結晶魔術は、魔術で物質を作り出す研究で生まれた\nしかし、その試みは失敗に終わり 不安定な結晶を生み出すのみだった\nただ、その研究は魔力の性質を多く解明し 後の魔術に大きな影響を与えたという"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_gravity_damage",description:[{text:"重力魔術の攻撃を15%強化する",color:"gray"},"\n\n重力魔術は、魔術で物体を動かす研究で生まれた\n結晶魔術から着想を得て始まったそれは その過程で、人は新たな知識を得ることになる\n星の力を。そして宇宙を"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_fire_mastery",description:{text:"劫火の魔術が炎を残す",color:"gray"},cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_water_mastery",description:[{text:"流水の魔術の攻撃にノックバックを追加する",color:"gray"},"\n\n流水の魔術は、水を運ぶために生まれた魔術である\n重力魔術から派生したそれは、極限まで術式が単純化され 高い魔力効率を持つ\n民間に広く浸透していて、農耕でも利用される"],cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_thunder_mastery",description:{text:"ヴォルテミアの雷魔術の攻撃に状態異常「感電」を付与する",color:"gray"},cost:3}
data modify storage player_manager:loadout registry.skill append value {id:"school_elf_damage",description:[{text:"森人の祈祷の攻撃を15%強化する",color:"gray"},"\n\n森人の祈祷は、森人が使う祈祷である\n森人は、汚染領域の一つ「嵐の樹海」で暮らしている種族\n見目麗しく、寿命が長いことから その血肉は不死の霊薬になるとされる\n主に王国の闇市で、奴隷として高値で取引される"],cost:3}
# data modify storage player_manager:loadout registry.skill append value {id:"school_gem_damage",description:[{text:"宝石魔術の攻撃を15%強化する",color:"gray"},"\n\n宝石魔術は、魔力と宝石の関係を調べる中で発見された\nこの魔術によって、魔法の保存が可能となり 魔術師の象徴的な杖や、魔道具が生まれた"],cost:3}
# data modify storage player_manager:loadout registry.skill append value {id:"school_dragon_blood_damage",description:[{text:"竜血の祈祷の攻撃を15%強化する",color:"gray"},"\n\n竜血の祈祷は、王族の持つ力 竜の血を信仰する祈祷\n"],cost:3}

# 属性強化（物理・聖を除く各属性の与ダメージ1.1倍）
data modify storage player_manager:loadout registry.skill append value {id:"element_magic_damage",description:{text:"魔力属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_fire_damage",description:{text:"炎属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_water_damage",description:{text:"水属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_wind_damage",description:{text:"風属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_thunder_damage",description:{text:"雷属性の攻撃を10%強化する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"element_light_damage",description:{text:"光属性の攻撃を10%強化する",color:"gray"},cost:2}

# 防御
data modify storage player_manager:loadout registry.skill append value {id:"damage_taken_reduction",description:{text:"被ダメージを15%軽減する",color:"gray"},cost:2}

# MP
data modify storage player_manager:loadout registry.skill append value {id:"mana_capacity",description:{text:"最大MPを10増加する",color:"gray"},cost:2}
data modify storage player_manager:loadout registry.skill append value {id:"mana_regeneration",description:{text:"MP回復速度を25%増加する",color:"gray"},cost:2}

# 代償付き
data modify storage player_manager:loadout registry.skill append value {id:"skill_capacity_cursed",description:{text:"スキルコストが2増えるが、被ダメージが20%上昇する",color:"gray"},cost:0,skill_capacity_bonus:1}
data modify storage player_manager:loadout registry.skill append value {id:"mana_capacity_cursed",description:{text:"最大MPが30増え、MP回復速度が40%低下する",color:"gray"},cost:1}
data modify storage player_manager:loadout registry.skill append value {id:"mana_regeneration_cursed",description:{text:"MP回復速度が75%増加し、MP回復開始までの時間が減少するが、最大MPが50減少する",color:"gray"},cost:1}
data modify storage player_manager:loadout registry.skill append value {id:"magic_slots_cursed",description:{text:"魔法枠が1つ増えるが、被ダメージが20%上昇する",color:"gray"},cost:1}
