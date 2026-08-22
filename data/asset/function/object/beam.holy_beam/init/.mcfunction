#> asset:object/beam.holy_beam/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

execute on passengers run item modify entity @s container.0 {function:"set_custom_model_data",colors:{values:[-1],mode:"replace_all"}}

# 演出
	playsound block.beacon.deactivate player @a ~ ~ ~ 1 2
