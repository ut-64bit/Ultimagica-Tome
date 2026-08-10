#> world:game/stage/debug/start

# カウントダウン終了時、参加者をデバッグエリアへ散開させる。
spreadplayers -100 5 15 47 under -20 false @a[tag=Game.Participant]

return 1
