#> fortcraft:items/carrot/shield_potion/start
#
# 包帯の使用開始
#
# @within fortcraft:items/carrot/shield_potion/right_click

## タグ付け
    tag @s add FN.Consume
    tag @s add FN.Consume_ShieldPotion

## スコア
    scoreboard players set @s FN.ConsumeTime 100
    execute store result score @s FN.ConsumeSlot run data get entity @s SelectedItemSlot

    attribute @s generic.movement_speed modifier add b5d91138-2e89-4532-90c0-456451cde4e1 "consume" -0.093 add
    