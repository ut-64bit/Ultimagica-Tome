#> lib:gametime/get_delta.m
#
# 現在時刻との差を取得する
#
# @output storage lib: out.result
# @lib

# 現在時刻
	execute store result score #currentTime _ run time query gametime

# 現在時刻との差を計算する
	$execute store result storage lib: out.result int 1 run scoreboard players operation #currentTime _ -= $(time)

# あとしまつ
	scoreboard players reset #currentTime _

# 戻り値
	return run data get storage lib: out.result
