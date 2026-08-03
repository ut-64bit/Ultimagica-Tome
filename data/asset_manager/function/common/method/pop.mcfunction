#> asset_manager:common/method/pop
# 退避させたMethodを戻す

data remove storage asset:context method
data modify storage asset:context method set from storage asset:context MethodStashStack[-1].Value
data remove storage asset:context MethodStashStack[-1]
