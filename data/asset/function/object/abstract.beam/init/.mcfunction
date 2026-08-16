#> asset:object/abstract.beam/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~

# OwnerIDを設定する
	function asset:object/abstract.beam/init/set_owner

# TargetIDを設定する
	function asset:object/abstract.beam/init/set_target

execute on passengers run rotate @s 0.0 0.0

function asset:object/abstract.beam/init/shot_ray
