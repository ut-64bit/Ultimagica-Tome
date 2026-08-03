#> lib:gametime/get_current
#
# 現在時刻を取得する
#
# @output storage lib: out.result 現在時刻
# @lib

# 現在時刻を取得する
	execute store result storage lib: out.result int 1 run time query gametime

# 戻り値
	return run data get storage lib: out.result
