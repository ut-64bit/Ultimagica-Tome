#> asset:object/damage_indicator/init/
#
# 初期化処理
#

# 表示桁数を制限する
	data modify storage asset:context this.Damage set string storage asset:context this.Damage 0 4

# NBT初期化
	data modify storage asset:temp init set value {PickupDelay:32767,CustomNameVisible:true}

	data modify storage asset:temp init.CustomName set value [{text:"-",color:"gray"},{text:"0"}]
	function asset:object/damage_indicator/init/set_color
	data modify storage asset:temp init.CustomName[1].text set from storage asset:context this.Damage

	data modify entity @s {} merge from storage asset:temp init
	data remove storage asset:temp init
