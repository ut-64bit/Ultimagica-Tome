#> asset:object/skill_fire/register
#
# クラスの登録処理

data modify storage asset:object Extends append value "interface.attackable"
function asset:object/_extends/
data modify storage asset:object IsAbstract set value false
data modify storage asset:object ID set value "skill_fire"

# 着弾地点付近で探索する地表の範囲。
data modify storage asset:object Field.MaxRiseDistance set value 0
data modify storage asset:object Field.MaxDropDistance set value 3
