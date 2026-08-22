#> asset:object/proj.holy_beam_light/init/
#
# 初期化処理
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"

# AttackDataを生成する
	data modify storage api: in set value { Damage:6, Element:"light", School:"holy", Tags:["prayer","beam"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData

# 演出
	playsound block.beacon.power_select player @a ~ ~ ~ 1 2
