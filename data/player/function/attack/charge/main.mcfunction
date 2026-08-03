#> player:attack/charge/main
#

# チャージ開始時の処理
	execute unless data storage asset:context {OldState:"charge"} run function player:attack/call_charge_start/

# チャージを進める
	scoreboard players add @s ChargeTime 1

# ChargePhaseを計算する
	function player:attack/charge/get_phase/

# 発射する
	execute if score @s ChargePhase matches 1.. if entity @s[tag=!UsingItem] run data modify storage asset:context State set value "attack"
	execute if score @s ChargePhase matches 1.. unless data storage asset:context {IsHoldable:true} if score @s ChargePhase = $MaxPhase _ run data modify storage asset:context State set value "attack"
	execute if score @s ChargePhase matches 1.. if data storage asset:context {IsHoldable:true} if score @s ChargePhase = $MaxPhase _ if entity @s[tag=UsingItem] run data modify storage asset:context State set value "hold"

# チャージ中の処理
	function player:attack/call_charge_main/

# あとしまつ
	scoreboard players reset $MaxPhase _
