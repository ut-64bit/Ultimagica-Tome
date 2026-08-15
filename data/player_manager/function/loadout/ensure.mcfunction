#> player_manager:loadout/ensure
#
# player:context this が読み込まれている状態で使用する。

function player_manager:stats/ensure

execute unless data storage player:context this.Loadout run data modify storage player:context this.Loadout set value {Magic:[],Consumables:[],PassiveSkills:[],Class:""}
execute unless data storage player:context this.Loadout.Magic run data modify storage player:context this.Loadout.Magic set value []
execute unless data storage player:context this.Loadout.Consumables run data modify storage player:context this.Loadout.Consumables set value []
execute unless data storage player:context this.Loadout.PassiveSkills run data modify storage player:context this.Loadout.PassiveSkills set value []
execute unless data storage player:context this.Loadout.Class run data modify storage player:context this.Loadout.Class set value ""
