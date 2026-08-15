#> api:damage/core/modifiers/load_taken
#
# 実行者の被ダメージ条件付き倍率を読み込んで適用する。
# Player.Stats.DamageTakenModifiersの形式はDamageDealtModifiersと同じ。

data remove storage api:temp DamageModifiers
function oh_my_dat:please
data modify storage api:temp DamageModifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Stats.DamageTakenModifiers
function api:damage/core/modifiers/next
data remove storage api:temp DamageModifiers
data remove storage api:temp DamageModifier
