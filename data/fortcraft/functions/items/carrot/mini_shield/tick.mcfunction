#> fortcraft:items/carrot/mini_shield/tick
#
# 包帯の常時実行
#
# @within fortcraft:items/consume

## スコア減少
    scoreboard players remove @s FN.ConsumeTime 1

## 中断処理
    execute store result score $SelectedSlot FN.Temporary run data get entity @s SelectedItemSlot

    execute unless score @s FN.ConsumeSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/mini_shield/end

    execute unless entity @s[nbt={SelectedItem:{tag:{WeaponID:10003}}}] run function fortcraft:items/carrot/mini_shield/end

    execute if score @s FN.Jump matches 1.. run function fortcraft:items/carrot/mini_shield/end

## 完了
    execute if score @s FN.ConsumeTime matches ..0 if score @s FN.WeaponID matches 10003 if score @s FN.ConsumeSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/mini_shield/finish