# 予約されている状態遷移を即座に適用します。
# 通常は request で予約し、通常のマシンtickで適用する方が安全です。
execute unless data storage player:context this.StateMachine.current run return 0
execute unless data storage player:context this.StateMachine.transition.target run return 0
return run function player_manager:fsm/_core/apply_transition
