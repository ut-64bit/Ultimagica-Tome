# スタン時間を設定
	scoreboard players set @s StunTime 50

# フラグを立てる
	tag @s add Player.Stun

# 動けなくする
	function lib:motion/reset
	attribute @s movement_speed modifier add player:stun -1 add_multiplied_total

# 行動不可
	function player_manager:action_block/add {id:"stun",action:"dodge"}
	function player_manager:action_block/add {id:"stun",action:"guard"}
	function player_manager:action_block/add {id:"stun",action:"attack"}
	function player_manager:action_block/add {id:"stun",action:"jump"}

# 演出
	playsound entity.item.break player @a ~ ~ ~ 1.0 1.0
	playsound block.glass.break player @a ~ ~ ~ 1.0 1.0
	playsound block.anvil.land player @a ~ ~ ~ 1.0 1.3
	particle block{block_state:{Name:"cyan_stained_glass"}} ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal
	particle dust{color:65522,scale:1.0} ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal
	particle end_rod ~ ~1 ~ 0 0.5 0 0.1 10 force
	particle flash{color:-1} ~ ~1 ~ 0 0 0 0 1 force
