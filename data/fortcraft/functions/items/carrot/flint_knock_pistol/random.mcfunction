#> fortcraft:items/carrot/flint_knock_pistol/random
#
# 弾をばらけさせるファンクション
#
# @within function fortcraft:items/carrot/flint_knock_pistol/shot

## うわあああああああ
        execute if score $Random FN.Temporary matches 3..5 facing ^ ^0.5 ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 6..8 facing ^ ^-0.5 ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 9..11 facing ^0.5 ^ ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 12..14 facing ^-0.5 ^ ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 15..16 facing ^0.75 ^0.75 ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 17..18 facing ^-0.75 ^0.75 ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 19..20 facing ^0.75 ^-0.75 ^10 run tp @s ~ ~ ~ ~ ~
        execute if score $Random FN.Temporary matches 21..22 facing ^-0.75 ^-0.75 ^10 run tp @s ~ ~ ~ ~ ~