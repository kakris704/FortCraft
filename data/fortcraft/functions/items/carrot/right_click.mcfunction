#> fortcraft:items/carrot/right_click
#
# 人参棒での右クリック
#
# @within advancement fortcraft:carrot_right_click

## 持っている武器をスコアボードに
    execute store result score @s FN.WeaponID run data get entity @s SelectedItem.tag.WeaponID

## 再利用可能に
    scoreboard players set @s FN.RightClick 0
    advancement revoke @s only fortcraft:carrot_right_click

## 武器を調べる
    execute if score @s FN.ShotCoolTime matches 0 if entity @s[tag=!FN.Reload] run function fortcraft:items/carrot/weapon