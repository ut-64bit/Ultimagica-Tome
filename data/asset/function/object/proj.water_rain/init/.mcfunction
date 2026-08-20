#> asset:object/proj.water_rain/init/
#
# 初期化処理
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:3, Element:"water", School:"water", Tags:["magecraft"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
