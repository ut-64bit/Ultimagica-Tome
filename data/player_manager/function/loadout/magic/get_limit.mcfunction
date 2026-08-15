#> player_manager:loadout/magic/get_limit
#
# プレイヤー固有の魔法スロット数を取得する。
# 現在はホットバーへ展開するため、0～9の範囲に制限する。

function player_manager:stats/ensure
scoreboard players operation #LoadoutMagicLimit _ = @s MagicSlots
execute if score #LoadoutMagicLimit _ matches ..-1 run scoreboard players set #LoadoutMagicLimit _ 0
execute if score #LoadoutMagicLimit _ matches 10.. run scoreboard players set #LoadoutMagicLimit _ 9
