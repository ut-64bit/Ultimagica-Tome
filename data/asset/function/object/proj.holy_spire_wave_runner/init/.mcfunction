#> asset:object/proj.holy_spire_wave_runner/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:5, Element:"holy", School:"saint", Tags:["spear","ground"], Attribute:{ Unblockable:true }}
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
