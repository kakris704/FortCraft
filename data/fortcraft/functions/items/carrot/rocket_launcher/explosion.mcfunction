#> fortcraft:items/carrot/rocket_launcher/explosion
#
# 弾がキルされた時
#
# @within function fortcraft:items/carrot/rocket_launcher/*

## 後処理
    particle explosion ~ ~ ~ 1 1 1 1 50 force
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.75
    execute store result score $Damage FN.Temporary run data get entity @s data.Damage
    execute as @e[distance=..4] at @s if predicate fortcraft:damage run function fortcraft:function/bullet/damage
    kill @s