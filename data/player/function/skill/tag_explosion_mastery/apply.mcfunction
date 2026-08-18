#> player:skill/tag_explosion_mastery/apply
#

# 爆発のダメージを1.2倍に強化する
data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{Tags:["explosion"]},Multiplier:1200}
