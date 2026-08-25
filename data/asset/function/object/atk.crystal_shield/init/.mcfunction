#> asset:object/atk.crystal_shield/init/
#
# 初期化処理
#

function asset:object/super.init

# 系統強化スキル
	function player:skill/school_crystal_mastery/

# 初期化
	data merge entity @s {transformation:{scale:[1f,1f,1f]}}
	execute on passengers on passengers run attribute @s scale modifier add shield 1 add_multiplied_total
	execute on passengers on passengers run attribute @s scale base set 1
	execute on passengers on passengers run effect give @s invisibility infinite 0 true
	rotate @s ~ ~

# 数制限
	scoreboard players operation #t_OwnerID _ = @s OwnerID
	execute as @e[tag=Object.atk.crystal_shield,tag=!_init,distance=..1000] if score @s OwnerID = #t_OwnerID _ run function api:common/auto_kill
	scoreboard players reset #t_OwnerID _
