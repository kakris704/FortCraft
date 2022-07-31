#> fortcraft:items/carrot/hammer_assault_rifle/reload/off_hand
#
# オフハンドに持った時
#
# @within function fortcraft:items/carrot/off_hand

## 弾の数を調べる
    execute if entity @s[tag=FN.Reload_HammerAssaultRifle] run function fortcraft:items/hammer_assault_rifle/reload/end

    execute if score @s FN.HaveBullet matches 1.. if entity @s[tag=!FN.Reload_HammerAssaultRifle] run function fortcraft:items/carrot/hammer_assault_rifle/reload/start
