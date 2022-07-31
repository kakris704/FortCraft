#> fortcraft:items/carrot/pump_shotgun/bullet_kill
#
# 弾がキルされた時
#
# @within function fortcraft:items/carrot/pump_shotgun/*

## 後処理
    kill @e[tag=FN.PumpShotgunBullet,sort=nearest,limit=1]
    tag @a[tag=FN.Shooter] remove FN.Shooter