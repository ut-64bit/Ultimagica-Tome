#> core:received_damage/update
#
# 受けたダメージの情報の寿命を減らす
#

# 再帰で使うために受けたダメージを退避させる
	data modify storage damage:temp CopiedReceivedDamage set from storage damage: ReceivedDamage
	data remove storage damage: ReceivedDamage
# 再帰する
	execute if data storage damage:temp CopiedReceivedDamage[0] run function core:received_damage/foreach_received_damage
	data remove storage damage:temp CopiedReceivedDamage
