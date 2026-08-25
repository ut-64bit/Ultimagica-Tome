#> asset:object/skill_fire/init/

function asset:object/super.init

# 着弾座標の付近から地表を探し、炎を地面の上へ移動する。
execute at @s run function asset:object/abstract.ground_wave_runner/surface/find
execute unless data storage asset:context {GroundSurfaceFound:true} run function api:common/auto_kill
data remove storage asset:context GroundSurfaceFound
execute if entity @s[tag=KillFlag] run return 0

# 地表へ補正した後の位置でも重複を防ぐ。
execute at @s if entity @n[tag=Object.skill_fire,tag=!_init,distance=..1.5] run function api:common/auto_kill
execute if entity @s[tag=KillFlag] run return 0

# 0.5秒ごとに1ダメージを与える残留炎。
data modify storage api: in set value {Damage:0.5,AttackID:"null",Element:"fire",School:"fire",Tags:["magecraft","ground"]}
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
