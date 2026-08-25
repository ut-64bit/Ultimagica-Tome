#> player_manager:effect/tick/foreach

data modify storage effect:context Current set from storage effect:context Queue[0]
data remove storage effect:context Queue[0]
data remove storage effect:context Current.Removed

# TickIntervalごとにtick callbackを呼ぶ。初回は付与の次tickに呼ばれる。
execute store result score #EffectAge _ run data get storage effect:context Current.Age
execute store result score #EffectInterval _ run data get storage effect:context Current.TickInterval
execute if score #EffectInterval _ matches ..0 run scoreboard players set #EffectInterval _ 1
scoreboard players operation #EffectAge _ %= #EffectInterval _
execute if score #EffectAge _ matches 0 run function player_manager:effect/dispatch {Event:"tick"}

# callbackが解除を要求しなかった場合だけ経過時間を進める。
execute unless data storage effect:context Current{Removed:true} store result score #EffectAge _ run data get storage effect:context Current.Age
execute unless data storage effect:context Current{Removed:true} run scoreboard players add #EffectAge _ 1
execute unless data storage effect:context Current{Removed:true} store result storage effect:context Current.Age int 1 run scoreboard players get #EffectAge _

# Duration=-1は無期限。それ以外は1tick減らす。
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} store result score #EffectDuration _ run data get storage effect:context Current.Duration
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} run scoreboard players remove #EffectDuration _ 1
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} store result storage effect:context Current.Duration int 1 run scoreboard players get #EffectDuration _

# 自発解除と時間切れは同じremove callbackへ集約し、Reasonだけを分ける。
execute if data storage effect:context Current{Removed:true} run data modify storage effect:context Reason set value "self"
execute if data storage effect:context Current{Removed:true} run function player_manager:effect/dispatch {Event:"remove"}
execute unless data storage effect:context Current{Removed:true} if data storage effect:context Current{Duration:0} run data modify storage effect:context Reason set value "expired"
execute unless data storage effect:context Current{Removed:true} if data storage effect:context Current{Duration:0} run function player_manager:effect/dispatch {Event:"remove"}

# 継続中のエフェクトのみ次tickへ渡す。
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:0} run data modify storage effect:context Next append from storage effect:context Current

data remove storage effect:context Reason
data remove storage effect:context Current
scoreboard players reset #EffectAge _
scoreboard players reset #EffectInterval _
scoreboard players reset #EffectDuration _

execute if data storage effect:context Queue[0] run function player_manager:effect/tick/foreach
