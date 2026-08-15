#> api:damage/core/modifiers/load_dealt
#
# 実行者の与ダメージ条件付き倍率を読み込んで適用する。
# Player.Stats.DamageDealtModifiers:
#   [{Match:{School:"saint"},Multiplier:1200}]
#   [{Match:{Tags:["spear"]},Multiplier:1200}]
# Match内の複数条件はすべて一致した場合だけ適用され、複数の倍率は乗算される。

data remove storage api:temp DamageModifiers
function oh_my_dat:please
data modify storage api:temp DamageModifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Stats.DamageDealtModifiers
function api:damage/core/modifiers/next
data remove storage api:temp DamageModifiers
data remove storage api:temp DamageModifier
