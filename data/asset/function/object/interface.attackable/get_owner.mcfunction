#> asset:object/interface.attackable/get_owner
# 発射者に_ownerタグを付与する

execute unless predicate asset:valid_owner_id run return fail
scoreboard players operation $EntityID lib = @s OwnerID
function lib:entity_id/attach_tag.m {Tag:"_owner"}
