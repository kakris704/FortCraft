#> fortcraft:items/carrot/pump_shotgun/reload/off_hand
#
# オフハンドに持った時
#
# @within function fortcraft:items/carrot/off_hand

## 弾の数を調べる
    execute if entity @s[tag=FN.Reload_PumpShotgun] run function fortcraft:items/pump_shotgun/reload/end

    execute if score @s FN.HaveBullet matches 1.. if entity @s[tag=!FN.Reload_PumpShotgun] run function fortcraft:items/carrot/pump_shotgun/reload/start
