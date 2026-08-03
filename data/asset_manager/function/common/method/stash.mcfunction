#> asset_manager:common/method/stash
# Methodを退避させる

data modify storage asset:context MethodStashStack append value {}
data modify storage asset:context MethodStashStack[-1].Value set from storage asset:context method
data remove storage asset:context method
