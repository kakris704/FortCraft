#> fortcraft:player/login
#
# プレイヤーの初参加時の設定
#
# @within advancement fortcraft:login

## スコアボード設定
    # 弾とプレイヤーの紐づけ用スコア
    scoreboard players operation @s FN.PlayerNumber = $PlayerNumber FN.Temporary
    scoreboard players add @s FN.PlayerNumber 1
    scoreboard players operation $PlayerNumber FN.Temporary = @s FN.PlayerNumber