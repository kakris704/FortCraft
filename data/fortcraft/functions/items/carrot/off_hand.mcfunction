#> fortcraft:items/carrot/off_hand
#
# 人参棒をオフハンドに入れた時
#
# @within advancement fortcraft:carrot_off_hand

## 持っている武器をスコアボードに
    execute store result score @s FN.WeaponID run data get entity @s Inventory[{Slot:-106b}].tag.WeaponID
    execute store result score @s FN.Magazine run data get entity @s Inventory[{Slot:-106b}].tag.Magazine

## 再利用可能にする
    advancement revoke @s only fortcraft:carrot_off_hand

    execute unless data entity @s SelectedItem run function fortcraft:items/carrot/replace

## 武器ごとに分ける 
    execute if score @s FN.WeaponID matches 8001 if score @s FN.Magazine matches 0 run function fortcraft:items/carrot/flint_knock_pistol/reload/off_hand
    execute if score @s FN.WeaponID matches 21001 if score @s FN.Magazine matches ..19 run function fortcraft:items/carrot/hammer_assault_rifle/reload/off_hand
    execute if score @s FN.WeaponID matches 1001 if score @s FN.Magazine matches ..4 run function fortcraft:items/carrot/pump_shotgun/reload/off_hand