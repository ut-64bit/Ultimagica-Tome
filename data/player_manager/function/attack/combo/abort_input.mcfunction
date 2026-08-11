#> player_manager:attack/combo/abort_input
#
# Keeps the pending combo when the resolved attack could not start.

data remove storage api: in.ComboInputAttackID
return fail
