#> player_manager:attack/block_pending_actions
#
# Prevent lower-priority inputs from replacing a newly requested attack
# before the FSM enters attack_charge.

function player_manager:action_block/add {id:"attack_pending",action:"attack"}
function player_manager:action_block/add {id:"attack_pending",action:"guard"}
function player_manager:action_block/add {id:"attack_pending",action:"jump"}
function player_manager:action_block/add {id:"attack_pending",action:"dodge"}
