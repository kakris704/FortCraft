#> fortcraft:items/carrot/pump_shotgun/reload/start
#
# リロード開始の処理
#
# @within function fortcraft:items/carrot/pump_shotgun/reload/off_hand

## メインハンドに戻す
    execute store result score @s FN.ReloadSlot run data get entity @s SelectedItemSlot

    tag @s add FN.Reload_PumpShotgun

    # タグ付け
        tag @s add FN.Reload

    # スコア
        execute store result score @s FN.ReloadTime run data get entity @s SelectedItem.tag.ReloadTime

        attribute @s generic.movement_speed modifier add 7bca958a-f7ff-43ba-87ce-49ac96811ee5 "reload" -0.06 add

        execute if entity @s[nbt={SelectedItem:{tag:{Standard:true}}}] run item modify entity @s weapon.mainhand fortcraft:pump_shotgun/reload_cmd
        execute if entity @s[nbt={SelectedItem:{tag:{Standard:false}}}] run item modify entity @s weapon.mainhand fortcraft:pump_shotgun/normal_cmd_gold_reload