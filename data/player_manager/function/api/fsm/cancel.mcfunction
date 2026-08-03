# 現在予約されている状態遷移を取り消します。
execute unless data storage player:context this.StateMachine.transition run return 0
data remove storage player:context this.StateMachine.transition
return 1
