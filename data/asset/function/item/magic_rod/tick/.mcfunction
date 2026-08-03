#> asset:item/magic_rod/tick/
#
# 毎tick呼び出されるメソッド
#

# 攻撃
	execute if score @s AttackTimer matches 1.. unless score @s HardCoolTime matches 1.. run function asset:item/magic_rod/attack/

# モデル切り替え
	execute if items entity @s weapon.mainhand *[custom_data~{Mode:"standby"}] if entity @s[tag=Guard] run item modify entity @s weapon.mainhand asset:magic_rod/guard
	execute if items entity @s weapon.mainhand *[custom_data~{Mode:"guard"}] if entity @s[tag=!Guard] run item modify entity @s weapon.mainhand asset:magic_rod/standby
