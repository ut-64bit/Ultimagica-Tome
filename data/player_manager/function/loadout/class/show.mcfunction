#> player_manager:loadout/class/show
# 現在選択中のクラスをプレイヤーへ表示する。

function player_manager:loadout/ensure
function player_manager:stats/rebuild
execute if data storage player:context this.Loadout{Class:""} run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラス: 未設定","color":"gray"}]
execute if data storage player:context this.Loadout{Class:""} run return 1
return run function player_manager:loadout/class/show.m with storage player:context this.Loadout
