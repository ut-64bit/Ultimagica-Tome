#> asset_manager:common/oh_my_dat/pop
# 退避させたOhMyDatIDを戻す

data remove storage asset:context OhMyDatID
data modify storage asset:context OhMyDatID set from storage asset:context OhMyDatIDStashStack[-1].Value
data remove storage asset:context OhMyDatIDStashStack[-1]
