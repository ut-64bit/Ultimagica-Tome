#> asset:object/abstract.item_particle/tick/
#
# 毎tick呼び出されるメソッド
#

# フレームを進める
	scoreboard players add @s General.Tick 1
	item modify entity @s container.0 asset:particle

# 時間になったら削除する
	execute store result score #t_Frame _ run data get storage asset:context this.Frame
	execute if score @s General.Tick > #t_Frame _ run function api:common/auto_kill
	scoreboard players reset #t_Frame _
