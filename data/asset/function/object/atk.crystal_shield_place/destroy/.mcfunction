#> asset:object/atk.crystal_shield_place/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle end_rod ~ ~ ~ 0 0 0 0.1 10 force
	particle firework ~ ~ ~ 0 0 0 0.1 10 force
	particle block{block_state:{Name:"light_blue_stained_glass"}} ~ ~ ~ 0.5 0.5 0.5 0 10 force
	playsound block.glass.break player @a ~ ~ ~ 1 1

# 乗ってるエンティティもキルする
	execute on passengers on passengers run function asset:object/atk.crystal_shield_place/destroy/kill_slime
	execute on passengers run function api:common/auto_kill
