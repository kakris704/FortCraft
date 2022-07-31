#> fortcraft:items/carrot/pump_shotgun/right_click
#
# ポンプショットガン(WeaponID:1001)の右クリック時
#
# @within function fortcraft:items/carrot/right_click

## 弾の確認
    execute store result score @s FN.Magazine run data get entity @s SelectedItem.tag.Magazine

    # 弾があるとき
        execute if score @s FN.Magazine matches 1.. run function fortcraft:items/carrot/pump_shotgun/shot
        