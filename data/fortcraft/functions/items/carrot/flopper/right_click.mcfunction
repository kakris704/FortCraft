#> fortcraft:items/carrot/flopper/right_click
#
# 包帯の右クリック
#
# @within fortcraft:items/carrot/right_click

## 体力を調べる
    execute if score @s FN.Health matches ..1999 if entity @s[tag=!FN.Consume] run function fortcraft:items/carrot/flopper/start
    execute if score @s FN.Health matches 2000.. if entity @s[tag=!FN.Consume] run tellraw @s {"text":"体力が満タン","color":"yellow"}