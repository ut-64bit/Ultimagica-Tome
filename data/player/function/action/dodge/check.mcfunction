#> player:action/dodge/check
#
# 回避できるかチェックする
#

# クールタイム
	execute if score @s Dodge.CoolTime matches 1.. run return fail

# MPが足りてるか
	data modify storage api: in.Amount set value 10
	execute unless function api:stamina/check run return fail

# その他の条件
	execute if entity @s[tag=Stun] run return fail
	execute if predicate lib:input/sneak run return fail
	execute if entity @s[gamemode=creative] run return fail
	execute if entity @s[gamemode=spectator] run return fail


execute if items entity @s weapon.mainhand *[custom_data~{AttackID:"wind_arrow"}] if data storage player:context this{AttackState:"hold"} run return 1
execute unless score @s HardCoolTime matches 1.. run return 1
