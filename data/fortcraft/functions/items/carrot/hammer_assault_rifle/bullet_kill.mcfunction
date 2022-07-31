#> fortcraft:items/carrot/hammer_assault_rifle/bullet_kill
#
# 弾がキルされた時
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/*

## 後処理
    kill @e[tag=FN.HammerAssaultRifleBullet,sort=nearest,limit=1]
    tag @a[tag=FN.Shooter] remove FN.Shooter