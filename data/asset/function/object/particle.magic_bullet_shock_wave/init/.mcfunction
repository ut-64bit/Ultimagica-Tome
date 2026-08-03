#> asset:object/particle.magic_bullet_shock_wave/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

item modify entity @s container.0 { function:"set_custom_model_data", colors:{ mode:"replace_all", values:[10751416] } }
