#> fortcraft:items/carrot/hammer_assault_rifle/head_damage
#
# 頭に弾が当たったときのダメージ処理
#
# @within fortcraft:items/carrot/hammer_assault_rifle/bullet_hit

## ダメージ処理
    scoreboard players operation $Damage FN.Temporary *= $15 FN.Constant
    scoreboard players operation $Damage FN.Temporary /= $10 FN.Constant
    function fortcraft:function/bullet/damage

## 後処理
    tag @s remove FN.HitHead
    execute at @a[tag=FN.Shooter] run playsound minecraft:fortnite.player.hit_head master @a[tag=FN.Shooter]
    function fortcraft:items/carrot/hammer_assault_rifle/bullet_kill