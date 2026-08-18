#> asset:object/proj.elf_blast/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# AttackDataを生成する
	data modify storage api: in set value { Damage:5, Element:"wind", School:"elf", Tags:["explosion"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
