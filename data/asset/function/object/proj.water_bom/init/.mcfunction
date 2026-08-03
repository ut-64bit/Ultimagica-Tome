#> asset:object/proj.water_bom/init/
#
# 初期化処理
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:2 }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
