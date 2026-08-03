#> asset:object/proj.thunder_spire/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# 演出
	playsound item.trident.hit_ground neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
