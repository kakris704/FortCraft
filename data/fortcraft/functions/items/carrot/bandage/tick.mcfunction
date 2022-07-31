#> fortcraft:items/carrot/bandage/tick
#
# 包帯の常時実行
#
# @within fortcraft:items/consume

## スコア減少
    scoreboard players remove @s FN.ConsumeTime 1

## 中断処理
    execute store result score $SelectedSlot FN.Temporary run data get entity @s SelectedItemSlot

    execute unless score @s FN.ConsumeSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/bandage/end

    execute unless entity @s[nbt={SelectedItem:{tag:{WeaponID:10001}}}] run function fortcraft:items/carrot/bandage/end

    execute if score @s FN.Jump matches 1.. run function fortcraft:items/carrot/bandage/end

## 完了
    execute if score @s FN.ConsumeTime matches ..0 if score @s FN.WeaponID matches 10001 if score @s FN.ConsumeSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/bandage/finish