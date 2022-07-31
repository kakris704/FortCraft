#> fortcraft:items/carrot/flint_knock_pistol/jump
#
# 自分をスライムで後ろに飛ばす
#
# @within function fortcraft:items/carrot/flint_knock_pistol/shot

## 慣性を消す
    tp @s 0 0 0
    tp ~ ~ ~
    execute anchored eyes run particle minecraft:cloud ^ ^ ^0.3 0 0 0 0.125 25 normal @s
    execute anchored eyes run particle minecraft:smoke ^ ^ ^0.3 0 0 0 0.125 25 normal @s

## aecで上にジャンプ
    execute store result score $Rotation FN.Temporary run data get entity @s Rotation[1]
    summon area_effect_cloud ~ ~ ~ {Tags:["FN.FlintKnock_Jump"],Particle:smoke,NoGravity:1b,Radius:1.0f,Duration:6,Age:4,WaitTime:0,Effects:[{Id:25b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    execute if score $Rotation FN.Temporary matches 1.. store result entity @e[tag=FN.FlintKnock_Jump,distance=..2,limit=1] Effects[0].Amplifier byte 1.32 run scoreboard players get $Rotation FN.Temporary

## スライムを召喚
            execute if score $Rotation FN.Temporary matches 1.. run scoreboard players operation $Rotation FN.Temporary *= $-1 FN.Constant
            scoreboard players operation $Rotation FN.Temporary += $90 FN.Constant
            scoreboard players operation $Rotation FN.Temporary *= $75 FN.Constant
            scoreboard players operation $Rotation FN.Temporary /= $100 FN.Constant

    execute unless score $Rotation FN.Temporary matches 80..90 positioned ~ ~-0.1 ~ rotated ~ 0 run function fortcraft:items/carrot/flint_knock_pistol/summon

        #gamerule
        gamerule maxEntityCramming 0

## scheduleでスライムをキル
    schedule function fortcraft:items/carrot/flint_knock_pistol/slime_kill 2t
