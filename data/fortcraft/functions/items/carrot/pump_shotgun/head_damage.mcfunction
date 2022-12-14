#> fortcraft:items/carrot/pump_shotgun/head_damage
#
# 頭に弾が当たったときのダメージ処理
#
# @within fortcraft:items/carrot/pump_shotgun/bullet_hit

## ダメージ処理
    scoreboard players operation $Damage FN.Temporary *= $185 FN.Constant
    scoreboard players operation $Damage FN.Temporary /= $100 FN.Constant
    function fortcraft:function/bullet/damage

## 後処理
    execute at @a[tag=FN.Shooter] run playsound minecraft:fortnite.player.hit_head master @a[tag=FN.Shooter]
    function fortcraft:items/carrot/pump_shotgun/bullet_kill
