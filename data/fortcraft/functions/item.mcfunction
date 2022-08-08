#> fortcraft:item
#
# 追加アイテムの常時実行
#
# @within function fortcraft:main

## パーティクル
    execute store result score @s FN.ItemRarity run data get entity @s Item.tag.Rarity
    execute if score @s FN.ItemRarity matches 0 if data entity @s Item.tag.Rarity run particle dust 0.439 0.439 0.439 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 1 run particle dust 0 1 0.082 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 2 run particle dust 0.008 0.439 1 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 3 run particle dust 0.384 0 1 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 4 run particle dust 1 0.682 0 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 5 run particle dust 0.988 1 0.306 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute if score @s FN.ItemRarity matches 6 run particle dust 0.286 0.678 1 0.65 ~ ~ ~ 0.1 0.1 0.1 1 2

## 文字表示用のアイテムをキル
    execute if entity @s[nbt={Item:{tag:{ShowDamage:true}}}] run function fortcraft:items/show