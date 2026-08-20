#> asset:object/proj.water_rain_rain/init/
#
# 初期化処理
#

function asset:object/super.init

rotate @s ~ 87
execute if predicate lib:random_chance/50 at @s run rotate @s ~ ~1
execute if predicate lib:random_chance/50 at @s run rotate @s ~ ~1

# AttackDataを生成する
	data modify storage api: in set value { Damage:1, Element:"water", School:"water", Tags:["magecraft"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
