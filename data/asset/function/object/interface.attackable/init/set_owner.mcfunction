#> asset:object/interface.attackable/init/set_owner
#

# 引き継ぐ
	execute unless data storage asset:context this.OwnerID run scoreboard players operation @s OwnerID = @n[tag=_this,distance=..1000] OwnerID

# 発射したエンティティに設定する
	execute unless data storage asset:context this.OwnerID unless predicate asset:valid_owner_id \
		store result score @s OwnerID as @n[tag=_this,distance=..1000] run function lib:entity_id/get

# 手動で設定する
	execute if data storage asset:context this.OwnerID store result score @s OwnerID run data get storage asset:context this.OwnerID

# 0ならリセットする
	execute if score @s OwnerID matches 0 run scoreboard players reset @s OwnerID
