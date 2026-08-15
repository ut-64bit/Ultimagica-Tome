#> asset:object/proj.fire_ball/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:4, Element:"fire", School:"fire", Tags:[] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData

	data modify storage api: in set value { Damage:2, Element:"fire", School:"fire", Tags:["explosion"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
