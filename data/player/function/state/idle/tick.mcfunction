# 攻撃stateへ入る前に遷移が上書きされた場合の残留を自己修復する
execute if data storage player:context this.ActionBlock[{id:"attack"}] run function player_manager:attack/unblock_actions
execute if data storage player:context this.ActionBlock[{id:"attack_phase"}] run function player_manager:attack/unblock_actions
