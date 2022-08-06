#> fortcraft:player/weapon
#
# スロットが変更されたとき
#
# @wihtin function fortcraft:player/tick

## WeaponIDを確認
    execute store result score @s FN.WeaponID run data get entity @s SelectedItem.tag.WeaponID

## 条件
    execute if score @s FN.WeaponID matches 8001 run function fortcraft:items/carrot/flint_knock_pistol/main_hand

    execute if score @s FN.WeaponID matches 21001 run function fortcraft:items/carrot/hammer_assault_rifle/main_hand

    execute if score @s FN.WeaponID matches 1001 run function fortcraft:items/carrot/pump_shotgun/main_hand

    execute if score @s FN.WeaponID matches 1002 run function fortcraft:items/carrot/rocket_launcher/main_hand