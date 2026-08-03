#> asset_manager:common/this/stash
# thisを退避させる

data modify storage asset:context FieldStashStack append value {}
data modify storage asset:context FieldStashStack[-1].Value set from storage asset:context this
data remove storage asset:context this
