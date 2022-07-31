#> fortcraft:items/carrot/bandage/finish
#
# 包帯の完了
#
# @within fortcraft:items/carrot/bandage/tick

## タグ削除など
    tag @s remove FN.Consume
    tag @s remove FN.Consume_Bandage

    attribute @s generic.movement_speed modifier remove b5d91138-2e89-4532-90c0-456451cde4e1

    scoreboard players add @s FN.Health 300
    scoreboard players operation @s FN.Health < $1500 FN.Constant
    scoreboard players operation @s ScoreToHealth = @s FN.Health

    clear @s carrot_on_a_stick{WeaponID:10001} 1