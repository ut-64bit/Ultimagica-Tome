#> api:attack/cancel
#
# 攻撃をキャンセルする
#

data modify storage player:context this.AttackState set value "standby"
data remove storage player:context this.NextAttack

scoreboard players set @s ComboTimer 0
