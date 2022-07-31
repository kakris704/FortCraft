#> fortcraft:items/carrot/flint_knock_pistol/reload/off_hand
#
# オフハンドに持った時
#
# @within function fortcraft:items/carrot/off_hand

## 弾の数を調べる
    execute if entity @s[tag=FN.Reload_FlintKnockPistol] run function fortcraft:items/carrot/flint_knock_pistol/reload/end

    execute if score @s FN.HaveBullet matches 1.. if entity @s[tag=!FN.Reload_FlintKnockPistol] run function fortcraft:items/carrot/flint_knock_pistol/reload/start
