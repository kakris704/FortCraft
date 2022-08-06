#> fortcraft:items/carrot/rocket_launcher/reload/finish
#
# リロードを終了する
#
# @within function fortcraft:items/carrot/rocket_launcher/reload/tick

## 弾を回復
    item modify entity @s weapon.mainhand fortcraft:rocket_launcher/magazine

    tag @s remove FN.Reload
    tag @s remove FN.Reload_FlintKnockPistol

    # 弾を消費
        clear @s gunpowder{BulletID:4} 1

    attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5

    item modify entity @s weapon.mainhand fortcraft:rocket_launcher/normal_cmd
    
    # 音
        
