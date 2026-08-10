#> asset:object/proj.magic_turret/init/
#
# 初期化処理
#

function asset:object/super.init

# 向きを初期化する
	tp @s ~ ~ ~ ~ ~

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"

# 数制限
	scoreboard players operation #t_OwnerID _ = @s OwnerID
	execute as @e[tag=Object.proj.magic_turret,sort=nearest,distance=..1000] if score @s OwnerID = #t_OwnerID _ run function asset:object/proj.magic_turret/init/count_limit
	scoreboard players reset #t_CountLimit _
	scoreboard players reset #t_OwnerID _
