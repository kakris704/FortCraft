#> fortcraft:items/carrot/hammer_assault_rifle/body_damage
#
# 体に弾が当たったときのダメージ処理
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/bullet_hit

## ダメージ処理
    execute at @s run function fortcraft:function/bullet/damage

## 後処理
    tag @s remove FN.HitBody
    function fortcraft:items/carrot/hammer_assault_rifle/bullet_kill