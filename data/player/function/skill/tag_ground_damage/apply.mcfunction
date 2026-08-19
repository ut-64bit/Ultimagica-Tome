#> player:skill/tag_ground_damage/apply
#

# 槍の攻撃を1.2倍に強化する
data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{Tags:["ground"]},Multiplier:1200}
