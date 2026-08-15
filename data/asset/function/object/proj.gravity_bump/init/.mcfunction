#> asset:object/proj.gravity_bump/init/
#
# 初期化処理
#

function asset:object/super.init

# 向きを初期化する
	execute store result storage asset:temp X int 1 run random value -30..30
	execute store result storage asset:temp Y int 1 run random value -30..30
	execute if entity @n[tag=_this,tag=Object.proj.gravity_bump_runner,distance=..1000] run function asset:object/proj.gravity_bump/init/macro with storage asset:temp
	data remove storage asset:temp X
	data remove storage asset:temp Y

# AttackDataを生成する
	data modify storage api: in set value { Damage:8, Element:"physical", School:"gravity", Tags:["ground"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
