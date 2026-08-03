#> asset:object/abstract.projectile/tick/get_target
# 対象者に_targetタグを付与する

scoreboard players operation $EntityID lib = @s TargetID
function lib:entity_id/attach_tag.m {Tag:"_target"}
