#> player_manager:weapon/set
#
# 引数: {type:"武器種"}
#

execute unless data storage player:context this run return fail
$data modify storage player:context this.Weapon.Type set value "$(type)"

return 1
