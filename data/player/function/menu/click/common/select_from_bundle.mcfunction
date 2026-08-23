#> player:menu/click/common/select_from_bundle
#
# バンドル型の選択メニュー自体をクリックしたときの案内。

tellraw @s {"text":"いずれかの項目を選択してください。","color":"yellow"}
playsound ui.button.click ui @s ~ ~ ~ 0.6 1
