#> asset:object/proj.gravity_flying_debris_runner/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "move"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"
