#> asset:item/magic_rod/tick/
#
# 毎tick呼び出されるメソッド
#

# モデル切り替え
	execute if items entity @s weapon.mainhand *[custom_data~{Mode:"standby"}] if entity @s[tag=Player.Guard] run item modify entity @s weapon.mainhand asset:magic_rod/guard
	execute if items entity @s weapon.mainhand *[custom_data~{Mode:"guard"}] if entity @s[tag=!Player.Guard] run item modify entity @s weapon.mainhand asset:magic_rod/standby
