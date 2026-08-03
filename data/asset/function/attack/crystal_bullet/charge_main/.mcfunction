#> asset:attack/crystal_bullet/charge_main/
#
# チャージ中に呼ばれるメソッド
#

particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a

# ロックオンする
	execute unless data storage player:context this.StateMachine.state_data.Field.TargetID anchored eyes positioned ^ ^ ^ run function asset:attack/crystal_bullet/charge_main/ray

# ロックオンマーカーを表示する
	execute if data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/_common/vfx/lockon_marker
