#> fortcraft:player/shot_cooldown
#
# 撃てない時間の制御
#
# @within function fortcraft:player/tick

## 減らす
    execute if score @s FN.ShotCoolTime matches 1.. run scoreboard players remove @s FN.ShotCoolTime 1

    # スロット変わったときに
        execute store result score $ShotSelectedSlot FN.Temporary run data get entity @s SelectedItemSlot


        execute unless score @s FN.ShotCoolTimeSlot = $ShotSelectedSlot FN.Temporary run scoreboard players set @s FN.ShotCoolTime 7