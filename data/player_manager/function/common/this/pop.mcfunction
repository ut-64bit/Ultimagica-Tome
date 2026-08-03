# 退避させた player:context this を戻す

data remove storage player:context this
data modify storage player:context this set from storage player:context FieldStashStack[-1].Value
data remove storage player:context FieldStashStack[-1]
