#> fortcraft:items/carrot/pump_shotgun/random
#
# 弾をばらけさせるファンクション
#
# @within function fortcraft:items/carrot/pump_shotgun/shot

## うわあああああああ
        execute if entity @s[tag=FN.1] facing ^ ^ ^15 run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=FN.2] facing ^0.75 ^0.75 ^15 run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=FN.3] facing ^0.75 ^-0.75 ^15 run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=FN.4] facing ^-0.75 ^0.75 ^15 run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=FN.5] facing ^-0.75 ^-0.75 ^15 run tp @s ~ ~ ~ ~ ~