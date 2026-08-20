#> asset:object/proj.gravity_bump_runner/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:6, Element:"physical", School:"gravity", Tags:["magecraft","ground"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
