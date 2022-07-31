#> fortcraft:items/carrot/bandage/right_click
#
# 包帯の右クリック
#
# @within fortcraft:items/carrot/right_click

## 体力を調べる
    execute if score @s FN.Health matches ..1499 if entity @s[tag=!FN.Consume] run function fortcraft:items/carrot/bandage/start
    execute if score @s FN.Health matches 1500.. run tellraw @s {"text":"体力が75%以上","color":"yellow"}