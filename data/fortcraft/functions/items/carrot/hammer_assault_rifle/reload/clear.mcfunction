#> fortcraft:items/carrot/hammer_assault_rifle/reload/clear
#
# 弾の消費
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/reload/finish

## 再帰
    scoreboard players remove @s FN.ReloadConsumeBullet 1
    clear @s gunpowder{BulletID:1} 1
    execute if score @s FN.ReloadConsumeBullet matches 1.. run function fortcraft:items/carrot/hammer_assault_rifle/reload/clear