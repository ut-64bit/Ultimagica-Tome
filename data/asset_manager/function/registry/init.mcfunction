#> asset_manager:registry/init
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
	data modify storage registry: two_empty_lists set value [[],[]]
	data modify storage registry: three_empty_lists set value [[],[],[]]
	data modify storage registry: two_empty_maps set value [{},{}]
	data modify storage registry: three_empty_maps set value [{},{},{}]
	data modify storage registry: initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
	data modify storage registry: _ set from storage registry: initial
# 割り当て済みアドレス保存ストレージ
	data remove storage registry: address
