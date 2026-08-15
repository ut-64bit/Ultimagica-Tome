#> asset:object/proj.thunder_strike/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 向きを合わせる
	tp @s ~ ~ ~ 0 0

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"

# textを初期化
	data modify entity @s text.text set value ""

# AttackDataを生成する
	data modify storage api: in set value { Damage:4, Element:"thunder" }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData append from storage api: out.AttackData
