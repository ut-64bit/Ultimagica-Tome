#> core:received_damage/foreach_received_damage
#

# 受けたダメージを取得する
	data modify storage damage:context ReceivedDamage set from storage damage:temp CopiedReceivedDamage[-1]

# 再帰で使うためにダメージの情報を退避させる
	data modify storage damage:temp CopiedDamageInfo set from storage damage:context ReceivedDamage.DamageInfo
	data remove storage damage:context ReceivedDamage.DamageInfo
# 再帰する
	execute if data storage damage:temp CopiedDamageInfo[0] run function core:received_damage/foreach_damage_info
	data remove storage damage:temp CopiedDamageInfo

# 一つもダメージの情報を持っていないなら、要素を削除する
	execute unless data storage damage:context ReceivedDamage.DamageInfo[0] run data remove storage damage:context ReceivedDamage
# 更新した要素をリストに戻す
	data modify storage damage: ReceivedDamage prepend from storage damage:context ReceivedDamage
	data remove storage damage:context ReceivedDamage

# 末尾の要素を削除する
	data remove storage damage:temp CopiedReceivedDamage[-1]
# 要素が残っていたら再帰する
	execute if data storage damage:temp CopiedReceivedDamage[0] run function core:received_damage/foreach_received_damage
