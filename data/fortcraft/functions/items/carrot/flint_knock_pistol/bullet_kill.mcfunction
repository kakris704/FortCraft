#> fortcraft:items/carrot/flint_knock_pistol/bullet_kill
#
# 弾がキルされた時
#
# @within function fortcraft:items/carrot/flint_knock_pistol/*

## 後処理
    kill @e[tag=FN.FlintKnockBullet,sort=nearest,limit=1]
    tag @a[tag=FN.Shooter] remove FN.Shooter