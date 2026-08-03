#> asset_manager:object/trigger/tick
# tickトリガー

# 識別用のタグを付与
	tag @s add _this

# OhMyDatからidとフィールドを取得する
	function oh_my_dat:please
	data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID
	data modify storage asset:context originID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID
	data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field

# tick処理をする
	function asset_manager:object/tick/

# フラグが立っていたら破棄する
	execute if entity @s[tag=KillFlag] at @s run function asset_manager:object/destroy/
	execute if entity @s[tag=KillFlag] run kill @s

# OhMyDatにデータを戻す
	execute if score @s OhMyDatID matches -2147483648..2147483647 run function oh_my_dat:please
	execute if score @s OhMyDatID matches -2147483648..2147483647 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field set from storage asset:context this

# あとしまつ
	data remove storage asset:context id
	data remove storage asset:context originID
	data remove storage asset:context this

# 識別用のタグを外す
	tag @s remove _this
