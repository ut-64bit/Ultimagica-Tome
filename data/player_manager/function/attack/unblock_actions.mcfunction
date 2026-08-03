#> player_manager:attack/unblock_actions
#
# 攻撃ライフサイクルによる行動制限を解除する
#

function player_manager:action_block/remove {id:"attack",action:"attack"}
function player_manager:action_block/remove {id:"attack",action:"guard"}
function player_manager:action_block/remove {id:"attack",action:"dodge"}
