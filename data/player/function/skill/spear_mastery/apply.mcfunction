#> player:skill/spear_mastery/apply
#

# 槍の攻撃を1.2倍に強化する
data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{Tags:["spear"]},Multiplier:1200}
