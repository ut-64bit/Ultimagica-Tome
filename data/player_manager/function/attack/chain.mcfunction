# 現在適用中の攻撃遷移を、別の攻撃のチャージ状態へ差し替えます。
# attack_* の exit コールバック内からのみ呼び出してください。
# 引数: {ID:"攻撃ID"}

$function asset:attack/$(ID)/register
execute unless data storage asset:attack ID run return fail

data modify storage player:temp attack_chain set value {target:"attack_charge",data:{Field:{}}}
data modify storage player:temp attack_chain.data.AttackID set from storage asset:attack ID
data modify storage player:temp attack_chain.data.ChargeTime set from storage asset:attack ChargeTime
data modify storage player:temp attack_chain.data.IsHoldable set from storage asset:attack IsHoldable
data modify storage player:temp attack_chain.data.Field set from storage asset:attack Field
data modify storage player:context this.StateMachine._transition set from storage player:temp attack_chain
data remove storage player:temp attack_chain

execute store result score @s HardCoolTime run data get storage asset:attack HardCoolTime
scoreboard players operation @s SoftCoolTime = @s HardCoolTime
scoreboard players add @s SoftCoolTime 4
scoreboard players set @s ComboTimer 4

data remove storage asset:attack ID
data remove storage asset:attack ChargeTime
data remove storage asset:attack IsHoldable
data remove storage asset:attack HardCoolTime
data remove storage asset:attack SoftCoolTime
data remove storage asset:attack ComboTime
data remove storage asset:attack RequireStamina
data remove storage asset:attack Field

return 1
