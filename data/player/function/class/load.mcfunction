#> player:class/load
#
# 個別のクラス定義をplayer_manager:loadout registry.classへ追加する。
# statsで省略した値には既定値が使われる。
#
# 定義形式:
# 表示名: ut_magic.class.<id>
# descriptionにはホバー表示するテキストコンポーネントを指定する。
# max_mpとmax_guard_powerは1000倍した内部値で指定する（例: 120 MP = 120000）。
# data modify storage player_manager:loadout registry.class append value {id:"mage",description:{text:"魔法を得意とするクラス",color:"gray"},skill_capacity:10,stats:{damage_dealt:{magic:1100},damage_taken:{physical:1100},cast_speed:1200,magic_slots:4,max_mp:120000,max_guard_power:20000},innate_skills:[{id:"mana_control"}]}

# 標準型: 最大MPを少し増やす。
data modify storage player_manager:loadout registry.class append value {id:"adventurer",description:{text:"標準クラスの一つ。魔力量に優れている\n新たな地を切り拓く、冒険者だったようだ",color:"gray"},skill_capacity:4,stats:{max_mp:120000},innate_skills:[]}

# 防御型: 最大ガード力を増やす。
data modify storage player_manager:loadout registry.class append value {id:"guardian",description:{text:"標準クラスの一つ。ガード術式に優れている\nどこかの都市を守る、騎士だったようだ",color:"gray"},skill_capacity:4,stats:{max_guard_power:20000},innate_skills:[]}

# 魔法構成型: 選択できる魔法を1枠増やす。
data modify storage player_manager:loadout registry.class append value {id:"scholar",description:{text:"標準クラスの一つ。記憶力に優れている\n新たな知識を求める、学徒だったようだ",color:"gray"},skill_capacity:4,stats:{magic_slots:4},innate_skills:[]}

# スキル構成型: スキルコスト上限を1増やす。
data modify storage player_manager:loadout registry.class append value {id:"specialist",description:{text:"標準クラスの一つ。技量に優れている\n己を鍛え抜く、求道者だったようだ",color:"gray"},skill_capacity:6,stats:{},innate_skills:[]}
