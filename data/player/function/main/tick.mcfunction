#> player:main/tick
#

# 旧データからの移行・破損時の復旧
	execute unless data storage player:context this.StateMachine.current run function player_manager:fsm/start {state:"idle"}

# 装備の処理
	function player:item/tick

# スタン
	execute unless data storage player:context this.StateMachine{current:"stun"} if score @s GuardPower matches 0 unless data storage player:context this.ActionBlock[{action:"stun"}] run function player:main/stun
# ジャンプ
	execute if predicate lib:input/sneak unless data storage player:context this.ActionBlock[{action:"jump"}] run attribute @s jump_strength base set 0.67
	execute unless predicate lib:input/sneak unless data storage player:context this.ActionBlock[{action:"jump"}] run attribute @s jump_strength base set 0
# ガード
	execute unless data storage player:context this.StateMachine{current:"guard"} if predicate lib:input/sneak if predicate lib:flag/on_ground unless data storage player:context this.ActionBlock[{action:"guard"}] run function player_manager:fsm/request {state:"guard"}
# 回避
	execute unless data storage player:context this.StateMachine{current:"dodge"} if score @s InputKey.Jump matches 1 unless score @s Dodge.CoolTime matches 1.. unless data storage player:context this.ActionBlock[{action:"dodge"}] run function player:main/try_dodge

function player_manager:fsm/tick

execute if score @s Dodge.CoolTime matches 1.. run scoreboard players remove @s Dodge.CoolTime 1

# ガード力の自然回復
	execute if score @s GuardPowerRecoverDelay matches 1.. run scoreboard players remove @s GuardPowerRecoverDelay 1
	execute if score @s GuardPowerRecoverDelay matches 0 store result storage api: in.Amount float 0.001 run scoreboard players get @s GuardPowerRecoverSpeed
	execute if score @s GuardPowerRecoverDelay matches 0 run function api:guard_power/recover

# コンボ
execute unless data storage player:context this.StateMachine.state_data.AttackID if score @s ComboTimer matches 1.. run scoreboard players remove @s ComboTimer 1
execute unless data storage player:context this.StateMachine.state_data.AttackID if score @s ComboTimer matches 0 run scoreboard players set @s ComboCount 0

# 先行入力
	execute if score @s AttackTimer matches 1.. run scoreboard players remove @s AttackTimer 1


# スタミナの処理
	function player:stamina/tick

# UIの処理
	function player:actionbar/tick
