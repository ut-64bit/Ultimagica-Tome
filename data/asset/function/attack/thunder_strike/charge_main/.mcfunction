#> asset:attack/thunder_strike/charge_main/
#
# チャージ中に呼ばれるメソッド
#

# 演出
	particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
	particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a
	execute anchored eyes positioned ^-0.2 ^-0.1 ^1 run function asset:attack/thunder_strike/charge_main/vfx/

# ロックオンする
	execute unless data storage asset:context this.TargetID anchored eyes positioned ^ ^ ^ run function asset:attack/thunder_strike/charge_main/ray

# ロックオンマーカーを表示する
	execute if data storage asset:context this.TargetID run function asset:attack/_common/vfx/lockon_marker
