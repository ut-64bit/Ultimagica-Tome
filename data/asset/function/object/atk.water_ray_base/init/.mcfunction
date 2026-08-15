#> asset:object/atk.water_ray_base/init/
#
# 初期化処理
#

function asset:object/super.init

# 向きを初期化する
	tp @s ~ ~ ~ ~ ~

# 初速を設定
	data modify storage asset:context this.Speed set value 40

# 威力を設定
	data modify storage api: in set value { Damage:5, Element:"water" }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData set from storage api: out.AttackData
