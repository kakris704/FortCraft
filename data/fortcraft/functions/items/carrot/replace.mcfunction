#> fortcraft:items/carrot/replace
#
# オフハンドのアイテムをメインハンドに
#
# @within function fortcraft:items/carrot/flint_knock_pistol/reload/start

## コピーして消す
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand with air
