# 予約されている状態遷移を即座に適用します。
# 通常は request で予約し、通常のマシンtickで適用する方が安全です。

# OhMyDatからデータを呼び出す
	function player_manager:common/this/stash
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# 実行
	function player_manager:fsm/flush

# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	function player_manager:common/this/pop
