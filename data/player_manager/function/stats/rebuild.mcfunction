#> player_manager:stats/rebuild
#
# player:context this のクラスとスキルから能力値を再構築する。
# クラスを先に適用し、固有スキル、選択スキルの順で適用する。

function player_manager:loadout/ensure
function player_manager:stats/reset

data remove storage player_manager:loadout temp.rebuild
execute if data storage player:context this.Loadout{Class:""} run return 0
execute unless data storage player:context this.Loadout.Class run return 0

function player_manager:stats/class/load.m with storage player:context this.Loadout
data remove storage player_manager:loadout temp.rebuild
return 1
