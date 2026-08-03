#> player_manager:attack/unblock_actions
#
# 攻撃ライフサイクルによる行動制限を解除する
#

function player_manager:action_block/remove {id:"attack",action:"attack"}
function player_manager:action_block/remove {id:"attack",action:"guard"}
# 旧形式の回避制限も片付ける
function player_manager:action_block/remove {id:"attack",action:"dodge"}
