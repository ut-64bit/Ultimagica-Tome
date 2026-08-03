#> player:load
#

# スコアボードを宣言する
	#> 検知するためのスコア
	scoreboard objectives add PlayTracker.Rejoin custom:leave_game
	scoreboard objectives add PlayTracker.Respawn custom:time_since_death
	scoreboard objectives add PlayTracker.Jump custom:jump
	scoreboard objectives add PlayTracker.FallDistance custom:fall_one_cm
	scoreboard objectives add UsingTime dummy

	#> スタミナ
	scoreboard objectives add Stamina dummy
	scoreboard objectives add MaxStamina dummy
	scoreboard objectives add StaminaRecoverDelay dummy
	scoreboard objectives add StaminaRecoverSpeed dummy

	#> 攻撃
	scoreboard objectives add ChargePhase dummy
	scoreboard objectives add ChargeTime dummy
	scoreboard objectives add AttackTime dummy
	scoreboard objectives add HoldTime dummy
	scoreboard objectives add ComboCount dummy
	scoreboard objectives add ComboTimer dummy
	scoreboard objectives add AttackTimer dummy

	#> 回避
	scoreboard objectives add Dodge.Duration dummy
	scoreboard objectives add Dodge.CoolTime dummy

	#> ガード
	scoreboard objectives add GuardTime dummy
	scoreboard objectives add GuardLockTime dummy
	scoreboard objectives add GuardPower dummy
	scoreboard objectives add MaxGuardPower dummy
	scoreboard objectives add GuardPowerRecoverDelay dummy
	scoreboard objectives add GuardPowerRecoverSpeed dummy

	#> スタン
	scoreboard objectives add StunTime dummy
	scoreboard objectives add StaggerTime dummy

	#> キー入力
	scoreboard objectives add InputKey.Sprint dummy
	scoreboard objectives add InputKey.Sneak dummy
	scoreboard objectives add InputKey.Jump dummy
	scoreboard objectives add InputKey.Forward dummy
	scoreboard objectives add InputKey.Backward dummy
	scoreboard objectives add InputKey.Right dummy
	scoreboard objectives add InputKey.Left dummy
