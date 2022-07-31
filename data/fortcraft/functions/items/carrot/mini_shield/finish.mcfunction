#> fortcraft:items/carrot/mini_shield/finish
#
# 包帯の完了
#
# @within fortcraft:items/carrot/mini_shield/tick

## タグ削除など
    tag @s remove FN.Consume
    tag @s remove FN.Consume_MiniShield

    attribute @s generic.movement_speed modifier remove b5d91138-2e89-4532-90c0-456451cde4e1

    scoreboard players add @s FN.Shield 25
    scoreboard players operation @s FN.Shield < $50 FN.Constant

    clear @s carrot_on_a_stick{WeaponID:10003} 1