#> player_manager:stats/rebuild
#
# player:context this のクラスとスキルから能力値を再構築する。
# クラスを先に適用し、固有スキル、選択スキルの順で適用する。

function player_manager:loadout/ensure
function player_manager:stats/reset

data remove storage player_manager:loadout temp.rebuild
execute if data storage player:context this.Loadout{Class:""} run scoreboard players operation @s Stamina < @s MaxStamina
execute if data storage player:context this.Loadout{Class:""} run scoreboard players operation @s GuardPower < @s MaxGuardPower
execute if data storage player:context this.Loadout{Class:""} run return 0
execute unless data storage player:context this.Loadout.Class run scoreboard players operation @s Stamina < @s MaxStamina
execute unless data storage player:context this.Loadout.Class run scoreboard players operation @s GuardPower < @s MaxGuardPower
execute unless data storage player:context this.Loadout.Class run return 0

function player_manager:stats/class/load.m with storage player:context this.Loadout
scoreboard players operation @s Stamina < @s MaxStamina
scoreboard players operation @s GuardPower < @s MaxGuardPower
data remove storage player_manager:loadout temp.rebuild
data remove storage player_manager:loadout temp.conflict
return 1
