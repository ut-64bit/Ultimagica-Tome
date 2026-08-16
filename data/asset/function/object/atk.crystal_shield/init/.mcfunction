#> asset:object/atk.crystal_shield/init/
#
# 初期化処理
#

function asset:object/super.init

    function asset:object/interface.attackable/get_owner
    data merge entity @s {transformation:{scale:[1f,1f,1f]}}
		execute on passengers on passengers run attribute @s scale modifier add shield 1 add_multiplied_total
		execute on passengers on passengers run attribute @s scale base set 1
		execute on passengers on passengers run effect give @s invisibility infinite 0 true
    execute rotated as @n[tag=_owner,distance=..1000] run tp @s ^ ^ ^ ~ ~

tag @n[tag=_owner,distance=..1000] remove _owner

# 数制限
	scoreboard players operation #t_OwnerID _ = @s OwnerID
	execute as @e[tag=Object.atk.crystal_shield,sort=nearest,distance=..1000] if score @s OwnerID = #t_OwnerID _ run function asset:object/atk.crystal_shield/init/count_limit
	scoreboard players reset #t_CountLimit _
	scoreboard players reset #t_OwnerID _
