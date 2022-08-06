#> fortcraft:items/carrot/rocket_launcher/right_click
#
# ロケッとランチャー(WeaponID:1002)の右クリック時
#
# @within function fortcraft:items/carrot/right_click

## 弾の確認
    execute store result score @s FN.Magazine run data get entity @s SelectedItem.tag.Magazine

    # 弾があるとき
        execute if score @s FN.Magazine matches 1.. run function fortcraft:items/carrot/rocket_launcher/shot
        