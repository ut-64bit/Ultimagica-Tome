#> asset:attack/holy_spire/hold_end/
#

# 通常発動では槍をattack_mainへ引き継ぐ
execute if data storage player:context this.StateMachine._transition{target:"attack_main"} run return 0

# ホールドのキャンセル時は待機中の槍を片付ける
execute as @e[tag=Object.proj.holy_spire,distance=..16] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function asset:object/proj.holy_spire/cancel
