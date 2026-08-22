#> asset:object/proj.gravity_bump/tick/particle_summon
#

particle block{block_state:{Name:"pointed_dripstone"}} ~ ~0.1 ~ 0.25 0 0.25 0 3 normal
particle instant_effect{color:11141290,power:-1} ~ ~0.1 ~ 0.1 0 0.1 0 1 force
playsound block.gravel.break player @a ~ ~ ~ 0.5 0.8
