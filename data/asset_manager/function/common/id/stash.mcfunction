#> asset_manager:common/id/stash
# IDを退避させる

data modify storage asset:context IDStashStack append value {}
data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
data remove storage asset:context id
