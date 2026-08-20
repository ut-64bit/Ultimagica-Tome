#> player_manager:init/combat
#
# FSMと攻撃中に使う一時状態を初期化する。
# @within function player_manager:init

data modify storage player:context this.StateMachine set value {current:"idle",time:0,state_data:{}}
data remove storage player:context this.ActionBlock

scoreboard players set @s GuardTime 0
scoreboard players set @s GuardLockTime 0
scoreboard players set @s GuardRepeatCount 0

attribute @s movement_speed modifier remove player:attack
attribute @s movement_speed modifier remove player:charge
attribute @s movement_speed modifier remove player:cooltime
attribute @s movement_speed modifier remove player:hold
attribute @s movement_speed modifier remove player:stagger

function player_manager:attack/combo/clear
function player_manager:invincibility/clear
