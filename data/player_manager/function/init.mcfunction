#> player_manager:init
#
# player:context this が読み込まれている状態で、プレイヤーの実行時状態を初期化する。
# ロードアウトの選択内容など、試合をまたいで保持するデータは変更しない。
#
# @within api:player/init または player_manager:tick

# 前回の試合から残った一時Effectを、各Effectのremoveを通して解除する。
function player_manager:effect/request/clear

# クラス・スキルから能力値を再構築する。
function player_manager:init/stats

# Vanillaの基礎属性を初期化する。
function player_manager:init/attributes

# 現在HP、MP、ガード力と回復待機時間を初期化する。
function player_manager:init/resources

# 初期状態で必要な常時効果を付与する。
function player_manager:init/effects

# FSMや攻撃中の一時状態を初期化する。
function player_manager:init/combat

return 1
