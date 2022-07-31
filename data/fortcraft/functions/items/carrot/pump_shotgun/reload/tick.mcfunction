#> fortcraft:items/carrot/pump_shotgun/reload/tick
#
# リロード中
#
# @within function fortcraft:items/reload

## リロードを進行

    # スコアを減少
        scoreboard players remove @s FN.ReloadTime 1

    # スロットを調べる
        execute store result score $SelectedSlot FN.Temporary run data get entity @s SelectedItemSlot

        execute unless score @s FN.ReloadSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/pump_shotgun/reload/end

        execute unless score @s FN.WeaponID matches 1001 run function fortcraft:items/carrot/pump_shotgun/reload/end

    # リロードの完了
        execute if score @s FN.ReloadTime matches ..0 if score @s FN.WeaponID matches 1001 if score @s FN.ReloadSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/pump_shotgun/reload/finish