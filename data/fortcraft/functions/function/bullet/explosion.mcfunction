#> fortcraft:function/bullet/explosion
#
# 爆発時の当たる人間を調べる
#
# @public

## 再帰
    scoreboard players add @s FN.ExplosionTimer 1
    execute if entity @s[dz=0] positioned ~-1 ~-1 ~-1 if entity @s[dz=0] run tag @s add FN.DamageExplosion
    execute if entity @s[tag=FN.DamageExplosion] positioned ^ ^ ^0.125 run tag @s add FN.End
    execute if score @s FN.ExplosionTimer matches 5.. unless block ~ ~ ~ #fortcraft:bullet_air_block positioned ^ ^ ^0.125 run tag @s add FN.End
    execute if score @s FN.ExplosionTimer >= $ExplosionRadius FN.Temporary positioned ^ ^ ^0.125 run tag @s add FN.End
    execute unless entity @s[tag=FN.End] positioned ^ ^ ^0.125 run function fortcraft:function/bullet/explosion
    scoreboard players set @s FN.ExplosionTimer 0
    tag @e remove FN.End