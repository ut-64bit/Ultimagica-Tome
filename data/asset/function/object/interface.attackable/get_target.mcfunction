#> asset:object/interface.attackable/get_target
# 対象者に_targetタグを付与する

execute unless predicate asset:valid_target_id run return fail
scoreboard players operation $EntityID lib = @s TargetID
function lib:entity_id/attach_tag.m {Tag:"_target"}
