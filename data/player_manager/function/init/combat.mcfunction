#> player_manager:init/combat
#
# FSMと攻撃中に使う一時状態を初期化する。
# @within function player_manager:init

# 初期状態もFSMの開始処理を通して設定する。
function player_manager:fsm/start {state:"idle"}
data remove storage player:context this.ActionBlock

attribute @s movement_speed modifier remove player:attack
attribute @s movement_speed modifier remove player:charge
attribute @s movement_speed modifier remove player:cooltime
attribute @s movement_speed modifier remove player:hold
attribute @s movement_speed modifier remove player:stagger

function player_manager:attack/combo/clear
function player_manager:invincibility/clear
