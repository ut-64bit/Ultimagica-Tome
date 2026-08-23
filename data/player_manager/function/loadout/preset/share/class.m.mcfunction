#> player_manager:loadout/preset/share/class.m
# 共有する構成のクラス名を全プレイヤーへ表示する。
# macro: {Class:string}

$tellraw @a [{"text":"  クラス: ","color":"gray"},{"translate":"ut_magic.class.$(Class)","color":"aqua"}]
