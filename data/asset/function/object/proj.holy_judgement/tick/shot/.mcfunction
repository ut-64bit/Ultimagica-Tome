#> asset:object/proj.holy_judgement/tick/shot/
#

execute store result storage asset:temp X float 0.01 run random value -100..100
execute store result storage asset:temp Y float 0.01 run random value -100..100
function asset:object/proj.holy_judgement/tick/shot/macro with storage asset:temp
execute store result storage asset:temp X float 0.01 run random value -100..100
execute store result storage asset:temp Y float 0.01 run random value -100..100
function asset:object/proj.holy_judgement/tick/shot/macro with storage asset:temp
data remove storage asset:temp X
data remove storage asset:temp Y
