#> player:action/dodge/main
#

# 演出
	execute unless predicate lib:flag/swimming run particle instant_effect{color:1677311} ~ ~1 ~ 0.3 0.6 0.3 0 3 force
	# execute unless predicate lib:flag/swimming run particle dust{color:1677311,scale:0.6} ~ ~1 ~ 0.3 0.6 0.3 0 5 normal
	execute if predicate lib:flag/swimming run particle bubble ^ ^ ^1 0.3 0.3 0.3 0 5 normal @a
