#> asset:object/proj.elf_whirl_charge/init/
#
# 初期化処理
#

function asset:object/super.init

rotate @s ~ 0

# 数制限
	scoreboard players operation #t_OwnerID _ = @s OwnerID
	execute as @e[tag=Object.proj.elf_whirl_charge,tag=!_init,distance=..1000] if score @s OwnerID = #t_OwnerID _ run function api:common/auto_kill
	scoreboard players reset #t_OwnerID _
