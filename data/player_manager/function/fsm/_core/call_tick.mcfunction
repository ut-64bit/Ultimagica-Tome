# マクロ引数は this.StateMachine から読み取ります。
# currentには状態名だけを指定します。例: "idle"、"combat/attack"
# 状態の毎tick処理は player:state/<state>/tick を実行します。
$function player:state/$(current)/tick
