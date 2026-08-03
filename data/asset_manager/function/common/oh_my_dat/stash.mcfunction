#> asset_manager:common/oh_my_dat/stash
# OhMyDatIDを退避させる

data modify storage asset:context OhMyDatIDStashStack append value {}
data modify storage asset:context OhMyDatIDStashStack[-1].Value set from storage asset:context OhMyDatID
data remove storage asset:context OhMyDatID
