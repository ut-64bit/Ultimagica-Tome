#> asset:object/proj.gravity_flying_debris/init/
#
# 初期化処理
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"

# AttackDataを生成する
	data modify storage api: in set value { Damage:1, Element:"physical", School:"gravity", Tags:["magecraft","ground"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData

#向きくるくる
function asset:object/interface.attackable/get_owner
execute store result storage asset:temp X int 1 run random value -5..5
execute store result storage asset:temp Y int 1 run random value -5..5
execute at @s run function asset:object/proj.gravity_flying_debris/init/macro with storage asset:temp
data remove storage asset:temp X
data remove storage asset:temp Y
tag @n[tag=_owner,distance=..1000] remove _owner

#演出
particle crit ~ ~0.1 ~ 0.25 0 0.25 0.25 25 force
particle block{block_state:{Name:"pointed_dripstone"}} ~ ~ ~ 0.1 0.1 0.1 0 10 normal
playsound entity.wither.break_block player @a ~ ~ ~ 0.25 1
