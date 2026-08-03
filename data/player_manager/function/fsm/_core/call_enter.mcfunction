# マクロ引数は this.StateMachine から読み取ります。
# currentには状態名だけを指定します。例: "idle"、"combat/attack"
# 状態へ入ったときは player:state/<state>/enter を実行します。
$function player:state/$(current)/enter
