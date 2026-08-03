#> asset_manager:registry/provide
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティのデータを、特定のオフセットで呼び出せるようにする

# シフト  (reset->1->     2->     3->     4->     5->     6->     7->     8)
# チェック(           2->     3->     4->     5->     6->     7->     8->  )

#define storage registry:
# test-score #c_65536 const 65536
# test-score #c_4 const 4

# reset
data remove storage registry: _[-4][-4][-4][-4][-4][-4][-4][6]
data remove storage registry: _[-4][-4][-4][-4][-4][-4][-4][5]
data remove storage registry: _[-4][-4][-4][-4][-4][-4][-4][4]
data remove storage registry: _[-4][-4][-4][-4][-4][-4][6]
data remove storage registry: _[-4][-4][-4][-4][-4][-4][5]
data remove storage registry: _[-4][-4][-4][-4][-4][-4][4]
data remove storage registry: _[-4][-4][-4][-4][-4][6]
data remove storage registry: _[-4][-4][-4][-4][-4][5]
data remove storage registry: _[-4][-4][-4][-4][-4][4]
data remove storage registry: _[-4][-4][-4][-4][6]
data remove storage registry: _[-4][-4][-4][-4][5]
data remove storage registry: _[-4][-4][-4][-4][4]
data remove storage registry: _[-4][-4][-4][6]
data remove storage registry: _[-4][-4][-4][5]
data remove storage registry: _[-4][-4][-4][4]
data remove storage registry: _[-4][-4][6]
data remove storage registry: _[-4][-4][5]
data remove storage registry: _[-4][-4][4]
data remove storage registry: _[-4][6]
data remove storage registry: _[-4][5]
data remove storage registry: _[-4][4]
data remove storage registry: _[6]
data remove storage registry: _[5]
data remove storage registry: _[4]

# ストレージシフト１
scoreboard players operation $Address _ *= #c_65536 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _ append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _ append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _ append from storage registry: three_empty_lists[]

# ストレージチェック２
execute unless data storage registry: _[-4][0] run data modify storage registry: _[-4] set from storage registry: initial[0]
# ストレージシフト２
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4] append from storage registry: three_empty_lists[]

# ストレージチェック３
execute unless data storage registry: _[-4][-4][0] run data modify storage registry: _[-4][-4] set from storage registry: initial[0][0]
# ストレージシフト３
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4] append from storage registry: three_empty_lists[]

# ストレージチェック４
execute unless data storage registry: _[-4][-4][-4][0] run data modify storage registry: _[-4][-4][-4] set from storage registry: initial[0][0][0]
# ストレージシフト４
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4][-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4][-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4][-4] append from storage registry: three_empty_lists[]

# ストレージチェック５
execute unless data storage registry: _[-4][-4][-4][-4][0] run data modify storage registry: _[-4][-4][-4][-4] set from storage registry: initial[0][0][0][0]
# ストレージシフト５
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4][-4][-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4][-4][-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4][-4][-4] append from storage registry: three_empty_lists[]

# ストレージチェック６
execute unless data storage registry: _[-4][-4][-4][-4][-4][0] run data modify storage registry: _[-4][-4][-4][-4][-4] set from storage registry: initial[0][0][0][0][0]
# ストレージシフト６
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4][-4][-4][-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4][-4][-4][-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4][-4][-4][-4] append from storage registry: three_empty_lists[]

# ストレージチェック７
execute unless data storage registry: _[-4][-4][-4][-4][-4][-4][0] run data modify storage registry: _[-4][-4][-4][-4][-4][-4] set from storage registry: initial[0][0][0][0][0][0]
# ストレージシフト７
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4][-4][-4][-4][-4] append value []
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4][-4][-4][-4][-4] append from storage registry: two_empty_lists[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4][-4][-4][-4][-4] append from storage registry: three_empty_lists[]

# ストレージチェック８
execute unless data storage registry: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4] set from storage registry: initial[0][0][0][0][0][0][0]
# ストレージシフト８
scoreboard players operation $Address _ *= #c_4 const
# 01....
execute if score $Address _ matches 1073741824.. run data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4] append value {}
# 10....
execute if score $Address _ matches ..-1073741825 run data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4] append from storage registry: two_empty_maps[]
# 11....
execute if score $Address _ matches -1073741824..-1 run data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4] append from storage registry: three_empty_maps[]
