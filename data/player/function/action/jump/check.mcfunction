#> player:action/jump/check
#
# ジャンプできるか
#

# スタン中じゃないか
	execute if entity @s[tag=Stun] run return fail

execute if entity @s[gamemode=creative] run return 1
execute if items entity @s weapon.mainhand *[custom_data~{AttackID:"wind_arrow"}] if data storage player:context this{AttackState:"hold"} if predicate lib:input/sneak run return 1
execute if predicate lib:input/sneak unless score @s HardCoolTime matches 1.. run return 1
