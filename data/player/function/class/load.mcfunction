#> player:class/load
#
# 個別のクラス定義をplayer_manager:loadout registry.classへ追加する。
# statsで省略した値には既定値が使われる。
#
# 定義形式:
# 表示名: ut_magic.class.<id>
# descriptionにはホバー表示するテキストコンポーネントを指定する。
# data modify storage player_manager:loadout registry.class append value {id:"mage",description:{text:"魔法を得意とするクラス",color:"gray"},skill_capacity:10,stats:{damage_dealt:{magic:1100},damage_taken:{physical:1100},cast_speed:1200,magic_slots:4},innate_skills:[{id:"mana_control"}]}

# 基本クラス
data modify storage player_manager:loadout registry.class append value {id:"basic",description:{text:"基本クラス",color:"gray"},skill_capacity:4,stats:{damage_dealt:{},damage_taken:{},cast_speed:1000,magic_slots:3},innate_skills:[]}
