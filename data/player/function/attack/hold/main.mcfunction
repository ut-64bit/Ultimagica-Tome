#> player:attack/hold/main
#

# ホールド開始時の処理
	execute unless data storage asset:context {OldState:"hold"} run function player:attack/call_hold_start/

scoreboard players add @s HoldTime 1

# ホールドの処理
	function player:attack/call_hold_main/

execute if entity @s[tag=!UsingItem] run data modify storage asset:context State set value "attack"
