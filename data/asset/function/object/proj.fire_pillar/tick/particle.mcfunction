#> asset:object/proj.fire_pillar/tick/particle

particle flame ~ ~2 ~ 0.3 1 0.3 0.025 2 force
particle dust{color:[1,0,0],scale:1} ~ ~2 ~ 0.3 1 0.3 0.025 3 force

execute if predicate lib:random_chance/5 run particle lava ~ ~2 ~ 0.3 1 0.3 0.025 1 force
execute if predicate lib:random_chance/50 run particle smoke ~ ~2 ~ 0.3 1 0.3 0.025 1 force

execute if predicate lib:random_chance/20 run particle flame ^0 ^0.1 ^-0.6 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^0.35267 ^0.1 ^-0.48541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^0.57063 ^0.1 ^-0.18541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^0.57063 ^0.1 ^0.18541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^0.35267 ^0.1 ^0.48541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^0 ^0.1 ^0.6 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^-0.35267 ^0.1 ^0.48541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^-0.57063 ^0.1 ^0.18541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^-0.57063 ^0.1 ^-0.18541 0 1 0 0.25 0 normal
execute if predicate lib:random_chance/20 run particle flame ^-0.35267 ^0.1 ^-0.48541 0 1 0 0.25 0 normal
