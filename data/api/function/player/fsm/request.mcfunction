# 引数: {state:"状態名"}
# 状態遷移を予約します。同じtick内で後から予約された遷移が優先されます。
# 遷移適用時に state_data は空になります。

# OhMyDatからデータを呼び出す
	function player_manager:common/this/stash
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# 実行
	$function player_manager:fsm/request {state:"$(state)"}

# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	function player_manager:common/this/pop
