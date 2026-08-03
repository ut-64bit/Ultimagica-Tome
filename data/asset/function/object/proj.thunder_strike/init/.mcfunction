#> asset:object/proj.thunder_strike/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 向きを合わせる
	tp @s ~ ~ ~ 0 0

# AttackDataを生成する
	data modify storage api: in set value { Damage:4 }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
