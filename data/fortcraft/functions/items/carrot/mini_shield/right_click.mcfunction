#> fortcraft:items/carrot/mini_shield/right_click
#
# 包帯の右クリック
#
# @within fortcraft:items/carrot/right_click

## 体力を調べる
    execute if score @s FN.Shield matches ..49 if entity @s[tag=!FN.Consume] run function fortcraft:items/carrot/mini_shield/start
    execute if score @s FN.Shield matches 50.. if entity @s[tag=!FN.Consume] run tellraw @s {"text":"シールドが50%以上","color":"yellow"}