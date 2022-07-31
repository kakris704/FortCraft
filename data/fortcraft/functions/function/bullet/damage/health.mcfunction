#> fortcraft:function/bullet/damage/health
#
# ダメージがシールドよりも高いとき
#
# @within function fortcraft:function/bullet/damage

## 計算
    tag @s add FN.Particle
    execute if score @s FN.Shield matches 1.. run particle minecraft:end_rod ~ ~0.75 ~ 0.25 0.5 0.25 0.125 100 force @a[tag=!FN.Particle]
    execute if score @s FN.Shield matches 1.. run playsound minecraft:fortnite.player.shield_crack master @a[tag=FN.Shooter]
    execute if score @s FN.Shield matches ..0 run playsound minecraft:fortnite.player.hit_body master @a[tag=FN.Shooter]
    execute if score @s FN.Shield matches ..0 run playsound minecraft:fortnite.player.hit_body master @s
    tag @s remove FN.Particle
    scoreboard players operation $Damage FN.Temporary -= @s FN.Shield
    scoreboard players set @s FN.Shield 0
    scoreboard players operation $Damage FN.Temporary *= $20 FN.Constant
    scoreboard players operation @s FN.Health -= $Damage FN.Temporary

    #Health<=0ならキル
        execute if score @s FN.Health matches ..0 run function fortcraft:function/bullet/death
## ScoreToHealth
    execute if score @s FN.Health matches 1.. store result score @s ScoreToHealth run scoreboard players get @s FN.Health

## ダメージ演出
    effect give @s instant_damage 1 30 true
 