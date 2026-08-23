#> player_manager:loadout/apply/give.m
# 登録済みの魔法アイテム1件を指定ホットバースロットへ付与する。

$execute if data storage player_manager:loadout registry.magic[{id:"$(id)"}] run loot replace entity @s hotbar.$(slot) loot asset:$(id)
