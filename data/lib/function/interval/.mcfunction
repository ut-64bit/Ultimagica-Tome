#> lib:interval/
#

$scoreboard players set #t_Interval lib $(Tick)
scoreboard players operation $Interval _ = @s General.Tick
$scoreboard players remove $Interval _ $(Offset)
scoreboard players operation $Interval _ %= #t_Interval lib
