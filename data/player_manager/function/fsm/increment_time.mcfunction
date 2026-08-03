# スコアボードは加算処理用の一時レジスタとしてのみ使用します。
scoreboard players set #time fsm.tmp 0
execute store result score #time fsm.tmp run data get storage player:context this.StateMachine.time
scoreboard players add #time fsm.tmp 1
execute store result storage player:context this.StateMachine.time int 1 run scoreboard players get #time fsm.tmp
return 1
