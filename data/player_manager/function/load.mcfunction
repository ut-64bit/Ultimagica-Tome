#> player_manager:load
#

# FSMのload処理
	function player_manager:fsm/_core/load

# ロードアウトのload処理
	function player_manager:loadout/load

# スコアボードを宣言する
	#> クラス・スキルから変更する能力値（1000 = 1.0倍）
	scoreboard objectives add DamageDealt.physical dummy
	scoreboard objectives add DamageDealt.magic dummy
	scoreboard objectives add DamageDealt.light dummy
	scoreboard objectives add DamageDealt.holy dummy
	scoreboard objectives add DamageDealt.fire dummy
	scoreboard objectives add DamageDealt.thunder dummy
	scoreboard objectives add DamageDealt.wind dummy
	scoreboard objectives add DamageDealt.water dummy
	scoreboard objectives add DamageTaken.physical dummy
	scoreboard objectives add DamageTaken.magic dummy
	scoreboard objectives add DamageTaken.light dummy
	scoreboard objectives add DamageTaken.holy dummy
	scoreboard objectives add DamageTaken.fire dummy
	scoreboard objectives add DamageTaken.thunder dummy
	scoreboard objectives add DamageTaken.wind dummy
	scoreboard objectives add DamageTaken.water dummy
	scoreboard objectives add CastSpeed dummy
	scoreboard objectives add MagicSlots dummy
	scoreboard objectives add SkillCapacity dummy
	scoreboard objectives add SkillCost dummy

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
	scoreboard objectives add Combo.Window dummy
	scoreboard objectives add AttackTimer dummy

	#> 回避
	scoreboard objectives add Dodge.Duration dummy
	scoreboard objectives add Dodge.CoolTime dummy
	scoreboard objectives add InvincibleTime dummy

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

# リロード時、参加中のプレイヤーに不足している能力値だけを補う。
execute as @a run function player_manager:stats/ensure
