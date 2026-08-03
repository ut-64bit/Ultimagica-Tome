#> asset_manager:common/this/pop
# 退避させたthisを戻す

data remove storage asset:context this
data modify storage asset:context this set from storage asset:context FieldStashStack[-1].Value
data remove storage asset:context FieldStashStack[-1]
