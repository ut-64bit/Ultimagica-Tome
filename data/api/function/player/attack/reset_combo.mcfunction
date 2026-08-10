#> api:player/attack/reset_combo
#
# プレイヤーのコンボを終了する
#

execute unless entity @s[type=player] run return fail
return run function player_manager:attack/reset_combo
