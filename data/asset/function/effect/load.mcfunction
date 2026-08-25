#> asset:effect/load
#
# Definition:
#   ID              : callbackのディレクトリ名
#   DefaultDuration : tick。-1は無期限
#   TickInterval    : tick callbackの間隔
#   Groups          : clear_group用。buff/debuff以外も追加可能
#   Reapply         : refresh / extend / stack / replace / ignore
#   MaxStacks       : stack時の上限
#   DefaultData     : 各エフェクト固有の初期データ
#
# 登録したIDには apply / reapply / tick / remove の4関数が必須。

data modify storage effect:registry Definitions append value {ID:"movement_speed_up",DefaultDuration:200,TickInterval:1,Groups:["buff"],Reapply:"refresh",MaxStacks:1,DefaultData:{}}
data modify storage effect:registry Definitions append value {ID:"movement_speed_down",DefaultDuration:100,TickInterval:1,Groups:["debuff"],Reapply:"refresh",MaxStacks:1,DefaultData:{}}
