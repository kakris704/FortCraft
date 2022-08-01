#> fortcraft:items/carrot/flopper/finish
#
# 包帯の完了
#
# @within fortcraft:items/carrot/flopper/tick

## タグ削除など
    tag @s remove FN.Consume
    tag @s remove FN.Consume_Flopper

    attribute @s generic.movement_speed modifier remove b5d91138-2e89-4532-90c0-456451cde4e1

    scoreboard players add @s FN.Health 800
    scoreboard players operation @s FN.Health < $2000 FN.Constant
    scoreboard players operation @s ScoreToHealth = @s FN.Health

    clear @s carrot_on_a_stick{WeaponID:10005} 1