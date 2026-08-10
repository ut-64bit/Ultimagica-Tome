#> core:system/tick
# warn-off-file target-selector-no-dimension
#
#

# プレイヤーのtick
	execute as @a at @s run function player_manager:tick

# Objectのtick
	execute as @e[tag=AssetObject] at @s run function asset_manager:object/trigger/tick

# 汎用タグ
	execute as @e[tag=AllowProcessingCommonTag] at @s run function core:process_tag/tick

# ダメージ
	function core:received_damage/update

# ゲームシステム
	function world_manager:game/tick

# メニュー用のアイテムが落ちていたらキルする
	execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".menu run kill @s
