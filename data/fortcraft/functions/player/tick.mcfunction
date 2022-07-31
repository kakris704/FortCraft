#> fortcraft:player/tick
#
# プレイヤーの常時実行
#
# @within function fortcraft:main

## Healthを取得
    execute store result score @s FN.Health run data get entity @s Health 100

## Magazineを取得
    execute store result score @s FN.Magazine run data get entity @s SelectedItem.tag.Magazine
    
## リロード
    execute if entity @s[tag=FN.Reload] run function fortcraft:items/reload

## Shieldを表示(ActionBar)
    execute if entity @s[gamemode=!creative,gamemode=!spectator] run function fortcraft:player/gui

## Magazineを表示(subtitle)
    execute if data entity @s SelectedItem.tag.Magazine run function fortcraft:player/show_magazine

## インタラクト時間を表示
    execute if entity @s[tag=FN.Consume] run function fortcraft:player/show_time

## アイテムを持っているとき
    execute if data entity @s SelectedItem.tag.WeaponID run function fortcraft:player/weapon

## 消費
    execute if entity @s[tag=FN.Consume] run function fortcraft:items/consume

## 射撃クールタイム
    function fortcraft:player/shot_cooldown

    execute store result score @s FN.ShotCoolTimeSlot run data get entity @s SelectedItemSlot

## スコアのリセット
    scoreboard players set @s FN.Jump 0

## Shieldを0~100に固定
    scoreboard players operation @s FN.Shield > $0 FN.Constant
    scoreboard players operation @s FN.Shield < $100 FN.Constant