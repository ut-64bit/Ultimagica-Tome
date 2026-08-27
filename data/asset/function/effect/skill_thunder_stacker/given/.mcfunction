#> asset:effect/skill_thunder_stacker/given/

function asset:effect/skill_thunder_stacker/given/stack

execute if data storage asset:context {Stacks:100} run function api:effect/give.m {ID:"skill_thunder"}
execute if data storage asset:context {Stacks:100} run function api:effect/remove_this
