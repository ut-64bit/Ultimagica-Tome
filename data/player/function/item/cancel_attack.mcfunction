#> player:item/cancel_attack
#
# アイテムを持ち替えたとき、実行中の攻撃をキャンセルする
#

# ホールド中だけ、持ち替えによるキャンセルを許可する
execute if data storage player:context this.StateMachine{current:"attack_hold"} run function player_manager:attack/cancel
