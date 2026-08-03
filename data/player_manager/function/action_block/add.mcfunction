data modify storage player:context this.ActionBlock append value {}
$data modify storage player:context this.ActionBlock[-1] set value {id:"$(id)", action:"$(action)"}
