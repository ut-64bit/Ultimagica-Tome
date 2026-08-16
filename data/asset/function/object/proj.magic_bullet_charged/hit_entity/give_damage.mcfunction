#> asset:object/proj.magic_bullet_charged/hit_entity/give_damage

# ダメージを与える
	function api:damage/give_damage

# 弾丸を破壊する
	execute if entity @s[tag=Untargetable] as @n[tag=_this,distance=..1000] run function api:common/auto_kill
