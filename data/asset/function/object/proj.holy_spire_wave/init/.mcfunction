#> asset:object/proj.holy_spire_wave/init/
#
# 初期化処理
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"
