#> asset:object/abstract.beam/tick/get_owner
# 発射者に_ownerタグを付与する

scoreboard players operation $EntityID lib = @s OwnerID
function lib:entity_id/attach_tag.m {Tag:"_owner"}
