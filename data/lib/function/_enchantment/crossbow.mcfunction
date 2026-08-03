#> lib:_enchantment/crossbow
#

execute on origin at @s run stopsound @a[distance=..20] player item.crossbow.shoot
execute on origin if items entity @s weapon.* crossbow[enchantments~[{enchantments:"lib:crossbow"}]] run item modify entity @s weapon.mainhand {function:"set_components",components:{charged_projectiles:[{id:"arrow",count:1}]}}
execute on origin if items entity @s weapon.* crossbow[enchantments~[{enchantments:"lib:crossbow"}]] run item modify entity @s weapon.offhand {function:"set_components",components:{charged_projectiles:[{id:"arrow",count:1}]}}

kill @s
