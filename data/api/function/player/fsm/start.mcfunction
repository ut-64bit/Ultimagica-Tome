# 引数: {state:"状態名"}
# 既存のステートマシンがある場合は、exitを呼び出してから置き換えます。

# OhMyDatからデータを呼び出す
	function player_manager:common/this/stash
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# 実行
	$function player_manager:fsm/start {state:"$(state)"}

# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	function player_manager:common/this/pop
