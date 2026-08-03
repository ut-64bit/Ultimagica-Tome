#> asset:object/proj.thunder_spire/init/
#
# 初期化処理
#

function asset:object/super.init

# 状態を初期化する
	data modify storage asset:context this.State set value "move"
