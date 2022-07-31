#> fortcraft:items/carrot/pump_shotgun/reload/finish
#
# リロードを終了する
#
# @within function fortcraft:items/carrot/pump_shotgun/reload/tick

## 弾を回復
    scoreboard players add @s FN.Magazine 1
    execute store result storage fortcraft:temporary Bullet int 1 run scoreboard players get @s FN.Magazine
    item modify entity @s weapon.mainhand fortcraft:remove_magazine

    # 弾を消費
        clear @s gunpowder{BulletID:3} 1

        execute if score @s FN.Magazine matches 5 run attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5
        execute if score @s FN.HaveBullet matches 1 run attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5

    # タグを削除 (マガジンが満タンの時）
        execute if score @s FN.Magazine matches 5 run tag @s remove FN.Reload
        execute if score @s FN.HaveBullet matches 1 run tag @s remove FN.Reload
        execute if score @s FN.Magazine matches 5 run tag @s remove FN.Reload_PumpShotgun
        execute if score @s FN.HaveBullet matches 1 run tag @s remove FN.Reload_PumpShotgun

    # スコアを再代入
        execute if score @s FN.Magazine matches ..4 store result score @s FN.ReloadTime run data get entity @s SelectedItem.tag.ReloadTime
