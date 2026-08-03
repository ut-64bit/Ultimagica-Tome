# player:context this を退避させる

data modify storage player:context FieldStashStack append value {}
data modify storage player:context FieldStashStack[-1].Value set from storage player:context this
data remove storage player:context this
