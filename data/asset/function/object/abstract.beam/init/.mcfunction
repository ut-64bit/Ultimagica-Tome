#> asset:object/abstract.beam/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~

# OwnerIDを設定する
	execute unless data storage asset:context this.OwnerID store result storage asset:context this.OwnerID int 1 as @n[tag=_this,distance=..1000] run function lib:entity_id/get
	execute if data storage asset:context this.OwnerID store result score @s OwnerID run data get storage asset:context this.OwnerID

execute on passengers run rotate @s 0.0 0.0

function asset:object/abstract.beam/init/shot_ray
