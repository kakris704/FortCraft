#> fortcraft:function/bullet/random
#
# 弾をばらけさせる
#
# @public

## 計算
    execute if predicate fortcraft:herf_random run scoreboard players operation $Accuracy1 FN.Temporary *= $-1 FN.Constant
    execute if predicate fortcraft:herf_random run scoreboard players operation $Accuracy2 FN.Temporary *= $-1 FN.Constant

    execute store result score $BulletRotateX FN.Temporary run data get entity @s Rotation[0] 1000
    execute store result score $BulletRotateY FN.Temporary run data get entity @s Rotation[1] 1000

    scoreboard players operation $BulletRotateX FN.Temporary += $Accuracy1 FN.Temporary
    scoreboard players operation $BulletRotateY FN.Temporary += $Accuracy2 FN.Temporary

    execute store result entity @s Rotation[0] float 0.001 run scoreboard players get $BulletRotateX FN.Temporary
    execute store result entity @s Rotation[1] float 0.001 run scoreboard players get $BulletRotateY FN.Temporary