#> core:received_damage/foreach_damage_info
#

# ダメージの情報を取得する
	data modify storage damage:context DamageInfo set from storage damage:temp CopiedDamageInfo[-1]

# ttlをデクリメントする
	execute store result storage damage:context DamageInfo.ttl int 0.9999999999 run data get storage damage:context DamageInfo.ttl

# ttlが0になったら要素を削除する
	execute if data storage damage:context DamageInfo{ttl:0} run data remove storage damage:context DamageInfo
# 更新した要素をリストに戻す
	data modify storage damage:context ReceivedDamage.DamageInfo prepend from storage damage:context DamageInfo
	data remove storage damage:context DamageInfo

# 末尾の要素を削除する
	data remove storage damage:temp CopiedDamageInfo[-1]
# 要素が残っていたら再帰する
	execute if data storage damage:temp CopiedDamageInfo[0] run function core:received_damage/foreach_damage_info
