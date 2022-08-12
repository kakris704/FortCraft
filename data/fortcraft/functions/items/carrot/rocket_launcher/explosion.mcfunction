#> fortcraft:items/carrot/rocket_launcher/explosion
#
# 弾がキルされた時
#
# @within function fortcraft:items/carrot/rocket_launcher/*

## 後処理
    particle explosion ~ ~ ~ 1 1 1 1 50 force
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.75
    execute store result score $Damage FN.Temporary run data get entity @s data.Damage
    scoreboard players set $ExplosionRadius FN.Temporary 32 
    execute as @e[distance=..4] if predicate fortcraft:damage facing entity @s feet run function fortcraft:function/bullet/explosion
    execute as @e[distance=..4,tag=FN.DamageExplosion] run function fortcraft:function/bullet/damage
    tag @e remove FN.DamageExplosion
    kill @s