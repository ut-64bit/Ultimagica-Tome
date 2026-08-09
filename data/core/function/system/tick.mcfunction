#> core:system/tick
# warn-off-file target-selector-no-dimension
#
#

# プレイヤーのtick
	execute as @a at @s run function player:tick

# Objectのtick
	execute as @e[tag=AssetObject] at @s run function asset_manager:object/trigger/tick

# 汎用タグ
	execute as @e[tag=AllowProcessingCommonTag] at @s run function core:process_tag/tick

# ダメージ
	function core:received_damage/update
