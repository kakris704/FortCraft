#> fortcraft:items/show
#
# ダメージ表示
#
# @within function fortcraft:item

## ダメージ表示用エンティティ
    data modify entity @s Age set value -32768
    scoreboard players add @s FN.ItemTick 1
    execute if score @s FN.ItemTick matches 10.. run kill @s