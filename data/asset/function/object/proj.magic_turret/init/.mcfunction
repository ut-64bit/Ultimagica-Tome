#> asset:object/proj.magic_turret/init/
#
# 初期化処理
#

function asset:object/super.init

# 向きを初期化する
	tp @s ~ ~ ~ ~ ~

# 数制限
	scoreboard players operation #t_OwnerID _ = @s OwnerID
	execute as @e[tag=Object.proj.magic_turret,sort=nearest,distance=..1000] if score @s OwnerID = #t_OwnerID _ run function asset:object/proj.magic_turret/init/count_limit
	scoreboard players reset #t_CountLimit _
	scoreboard players reset #t_OwnerID _
