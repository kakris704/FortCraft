#> fortcraft:items/carrot/hammer_assault_rifle/reload/finish
#
# リロードを終了する
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/reload/tick

## 弾を回復
    scoreboard players operation $ReloadHaveBullet FN.Temporary = @s FN.Magazine
    scoreboard players operation $ReloadHaveBullet FN.Temporary += @s FN.HaveBullet
    execute if score $ReloadHaveBullet FN.Temporary matches ..19 store result storage fortcraft:temporary Bullet int 1 run scoreboard players get $ReloadHaveBullet FN.Temporary
    execute if score $ReloadHaveBullet FN.Temporary matches 20.. run data modify storage fortcraft:temporary Bullet set value 20
    item modify entity @s weapon.mainhand fortcraft:remove_magazine

    tag @s remove FN.Reload
    tag @s remove FN.Reload_HammerAssaultRifle

    # 弾を消費
        function fortcraft:items/carrot/hammer_assault_rifle/reload/clear

    attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5

    item modify entity @s weapon.mainhand fortcraft:hammer_assault_rifle/normal_cmd
