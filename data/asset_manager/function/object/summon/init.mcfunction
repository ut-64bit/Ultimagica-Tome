#> asset_manager:object/summon/init
#

# OhMyDatを呼んで初期化する
	function oh_my_dat:please
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object

# IDを設定
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID set from storage asset:context id

# 共通のタグを付与
	tag @s add AssetObject

# ID識別用のタグを付与
	function asset_manager:object/summon/give_id_tag.m with storage asset:context

# 初期化する
	function asset_manager:object/init/

# Fieldを設定
	execute if score @s OhMyDatID matches -2147483648..2147483647 run function oh_my_dat:please
	execute if score @s OhMyDatID matches -2147483648..2147483647 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field set from storage asset:context this

# 初期化タグを外す
	tag @s remove _init
