#> asset:object/abstract.text_particle/tick/
#
# 毎tick呼び出されるメソッド
#

# フレームを進める
	scoreboard players add @s General.Tick 1
	scoreboard players operation #t_Text _ = @s General.Tick
	scoreboard players operation #t_Text _ += #c_1000 const
	execute store result storage asset:temp Text int 1 run scoreboard players get #t_Text _
	function asset:object/abstract.text_particle/tick/set_text.m with storage asset:temp
	scoreboard players reset #t_Text _
	data remove storage asset:temp Text

# 時間になったら削除する
	execute store result score #t_Frame _ run data get storage asset:context this.Frame
	execute if score @s General.Tick > #t_Frame _ run function api:common/auto_kill
	scoreboard players reset #t_Frame _
