#> asset:object/proj.fire_beam_base/init/
#
# 初期化処理
#

function asset:object/super.init

# 向きを初期化する
	tp @s ~ ~ ~ ~ ~

# AttackDataを生成する
	data modify storage api: in set value { Damage:4, Element:"fire", School:"fire", Tags:["magecraft","beam"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
