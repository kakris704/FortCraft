#> fortcraft:items/carrot/shield_potion/right_click
#
# 包帯の右クリック
#
# @within fortcraft:items/carrot/right_click

## 体力を調べる
    execute if score @s FN.Shield matches ..99 if entity @s[tag=!FN.Consume] run function fortcraft:items/carrot/shield_potion/start
    execute if score @s FN.Shield matches 100.. if entity @s[tag=!FN.Consume] run tellraw @s {"text":"シールドが満タン","color":"yellow"}