#> player:action/tick
#

# スタンの処理
	execute if entity @s[tag=!Stun] if score @s GuardPower matches 0 run function player:action/stun/start
	execute if entity @s[tag= Stun] if score @s StunTime matches 1.. run function player:action/stun/main
	execute if entity @s[tag= Stun] if score @s StunTime matches 0 run function player:action/stun/end

# 水中回避の処理
	execute if entity @s[tag=!Dodge] if score @s InputKey.Jump matches 1 if predicate lib:flag/swimming if function player:action/dodge/check run function player:action/swim_dodge/start

# 回避の処理
	execute if entity @s[tag=!Dodge] if score @s InputKey.Jump matches 1 unless predicate lib:flag/swimming if function player:action/dodge/check run function player:action/dodge/start
	execute if entity @s[tag= Dodge] if score @s Dodge.Duration matches 1.. run function player:action/dodge/main
	execute if entity @s[tag= Dodge] if score @s Dodge.Duration matches 0 run function player:action/dodge/end

# ガードの処理
	execute if entity @s[tag=!Guard] if predicate lib:input/sneak if function player:action/guard/check run function player:action/guard/start
	execute if entity @s[tag= Guard] if predicate lib:input/sneak run function player:action/guard/main
	execute if entity @s[tag= Guard] unless predicate lib:input/sneak run function player:action/guard/end

# ジャンプの処理
	execute if function player:action/jump/check run attribute @s jump_strength base set 0.67
	execute unless function player:action/jump/check run attribute @s jump_strength base set 0
	execute if score @s PlayTracker.Jump matches 1.. run function player:action/guard_cancel

# ガード力の自然回復
	execute unless score @s GuardPowerRecoverDelay matches 1.. store result storage api: in.Amount float 0.001 run scoreboard players get @s GuardPowerRecoverSpeed
	execute unless score @s GuardPowerRecoverDelay matches 1.. run function api:guard_power/recover


# タイマーを進める
	execute if score @s StunTime matches 1.. run scoreboard players remove @s StunTime 1
	execute if score @s Dodge.Duration matches 1.. run scoreboard players remove @s Dodge.Duration 1
	execute if score @s Dodge.CoolTime matches 1.. run scoreboard players remove @s Dodge.CoolTime 1
	execute if score @s GuardLockTime matches 1.. run scoreboard players remove @s GuardLockTime 1
	execute if score @s GuardPowerRecoverDelay matches 1.. run scoreboard players remove @s GuardPowerRecoverDelay 1
