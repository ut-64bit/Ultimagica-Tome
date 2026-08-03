#> asset_manager:common/origin_id/stash
# originIDを退避させる

data modify storage asset:context OriginIDStashStack append value {}
data modify storage asset:context OriginIDStashStack[-1].Value set from storage asset:context originID
data remove storage asset:context originID
