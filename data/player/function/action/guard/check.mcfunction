#> player:action/guard/check
#
# ガードできるかチェックする
#

# ガード硬直中は強制的にガードする
	execute if score @s GuardLockTime matches 1.. run return 1

# その他の条件
	execute if entity @s[tag=Stun] run return fail
	execute if entity @s[tag=Dodge] run return fail


execute unless score @s HardCoolTime matches 1.. if predicate lib:flag/on_ground run return 1
