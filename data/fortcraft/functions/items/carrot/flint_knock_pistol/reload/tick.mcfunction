#> fortcraft:items/carrot/flint_knock_pistol/reload/tick
#
# リロード中
#
# @within function fortcraft:items/reload

## リロードを進行

    # スコアを減少
        scoreboard players remove @s FN.ReloadTime 1

    # スロットを調べる
        execute store result score $SelectedSlot FN.Temporary run data get entity @s SelectedItemSlot

        execute unless score @s FN.ReloadSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/flint_knock_pistol/reload/end

        execute unless score @s FN.WeaponID matches 8001 run function fortcraft:items/carrot/flint_knock_pistol/reload/end

    # 音
        execute if score @s FN.ReloadTime matches 35 run playsound minecraft:fortnite.weapon.flintknock.reload_insert master @a ~ ~ ~ 0.75 0.9

    # リロードの完了
        execute if score @s FN.ReloadTime matches ..0 if score @s FN.WeaponID matches 8001 if score @s FN.ReloadSlot = $SelectedSlot FN.Temporary run function fortcraft:items/carrot/flint_knock_pistol/reload/finish