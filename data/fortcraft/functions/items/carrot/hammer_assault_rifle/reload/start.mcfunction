#> fortcraft:items/carrot/hammer_assault_rifle/reload/start
#
# リロード開始の処理
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/reload/off_hand

## メインハンドに戻す
    execute store result score @s FN.ReloadSlot run data get entity @s SelectedItemSlot

    tag @s add FN.Reload_HammerAssaultRifle

    # タグ付け
        tag @s add FN.Reload

    # 消費する弾数を計算
        execute store result score $ReloadBullet FN.Temporary run data get entity @s SelectedItem.tag.Magazine
        scoreboard players operation @s FN.ReloadConsumeBullet = $20 FN.Constant
        scoreboard players operation @s FN.ReloadConsumeBullet -= $ReloadBullet FN.Temporary

    # スコア
        execute store result score @s FN.ReloadTime run data get entity @s SelectedItem.tag.ReloadTime

        attribute @s generic.movement_speed modifier add 7bca958a-f7ff-43ba-87ce-49ac96811ee5 "reload" -0.06 add

        item modify entity @s weapon.mainhand fortcraft:hammer_assault_rifle/reload_cmd
        