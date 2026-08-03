#> asset:object/proj.water_bom/main/
#
# 更新処理
#

execute store result score #t_VelocityY _ run data get storage asset:context this.Velocity.Y 1000

scoreboard players remove #t_VelocityY _ 100

execute store result storage asset:context this.Velocity.Y float 0.001 run scoreboard players get #t_VelocityY _
scoreboard players reset #t_VelocityY _
