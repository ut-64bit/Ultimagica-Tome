#> asset:object/proj.holy_judgement/tick/shot/.m
#

function api:clear_in
$execute facing ^$(X) ^$(Y) ^10 run function api:object/summon.m {ID:"proj.holy_judgement_light"}
