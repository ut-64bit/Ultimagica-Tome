#> asset:object/beam.magic_beam/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

execute on passengers run item modify entity @s container.0 {function:"set_custom_model_data",colors:{values:[9185535],mode:"replace_all"}}

# AttackDataを生成する
	data modify storage api: in set value { Damage:5, Element:"magic" }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
