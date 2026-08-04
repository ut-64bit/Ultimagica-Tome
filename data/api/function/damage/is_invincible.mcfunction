#> api:damage/is_invincible
#
# 無敵かどうか
#
# @output
#	storage api: out.Invincible
#
# @api

# validate
	execute unless entity @s run return fail

# リセット
	data modify storage api: out.Invincible set value false

# 取得する
	execute if entity @s[tag=Player.Dodge] run data modify storage api: out.Invincible set value true
	execute if entity @s[tag=Player.Invincible] run data modify storage api: out.Invincible set value true
	execute if entity @s[gamemode=creative] run data modify storage api: out.Invincible set value true
	execute if entity @s[gamemode=spectator] run data modify storage api: out.Invincible set value true

# あとしまつ

# 出力
	return run data get storage api: out.Invincible
