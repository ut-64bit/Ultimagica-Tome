#> player_manager:init/resources
#
# 能力値の再構築後に、現在のリソースと回復待機時間を初期化する。
# @within function player_manager:init

# MP
scoreboard players operation @s Stamina = @s MaxStamina
scoreboard players set @s StaminaRecoverDelay 20

# ガード力
scoreboard players operation @s GuardPower = @s MaxGuardPower
scoreboard players set @s GuardPowerRecoverDelay 60
scoreboard players set @s GuardPowerRecoverSpeed 200

# HP
effect give @s instant_health 1 10
