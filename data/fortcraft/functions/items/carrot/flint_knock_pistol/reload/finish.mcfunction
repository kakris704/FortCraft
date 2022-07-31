#> fortcraft:items/carrot/flint_knock_pistol/reload/finish
#
# リロードを終了する
#
# @within function fortcraft:items/carrot/flint_knock_pistol/reload/tick

## 弾を回復
    item modify entity @s weapon.mainhand fortcraft:flint_knock_pistol/magazine

    tag @s remove FN.Reload
    tag @s remove FN.Reload_FlintKnockPistol

    # 弾を消費
        clear @s gunpowder{BulletID:2} 1

    attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5

    item modify entity @s weapon.mainhand fortcraft:flint_knock_pistol/normal_cmd
    
    # 音
        playsound minecraft:fortnite.weapon.flintknock.reload_end master @a ~ ~ ~ 0.75 0.9
