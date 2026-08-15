#> asset:object/proj.holy_spire/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"

# AttackDataを生成する
	data modify storage api: in set value { Damage:6, Element:"holy", School:"saint", Tags:["spear"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
