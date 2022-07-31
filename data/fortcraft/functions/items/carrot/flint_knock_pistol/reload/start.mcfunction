#> fortcraft:items/carrot/flint_knock_pistol/reload/start
#
# リロード開始の処理
#
# @within function fortcraft:items/carrot/flint_knock_pistol/reload/off_hand

## メインハンドに戻す
    execute store result score @s FN.ReloadSlot run data get entity @s SelectedItemSlot

    tag @s add FN.Reload_FlintKnockPistol

    # タグ付け
        tag @s add FN.Reload

    # スコア
        execute store result score @s FN.ReloadTime run data get entity @s SelectedItem.tag.ReloadTime

        attribute @s generic.movement_speed modifier add 7bca958a-f7ff-43ba-87ce-49ac96811ee5 "reload" -0.06 add

        item modify entity @s weapon.mainhand fortcraft:flint_knock_pistol/reload_cmd

    # 音
        playsound minecraft:fortnite.weapon.flintknock.reload_start master @a ~ ~ ~ 0.75 1
        