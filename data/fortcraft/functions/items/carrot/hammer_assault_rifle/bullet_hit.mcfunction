#> fortcraft:items/carrot/hammer_assault_rifle/bullet_hit
#
# fortcraft:function/bulletを使っていろいろ調べる
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/move

## 撃った人じゃないことを調べます
    function fortcraft:function/bullet/uuid_check

## 当たった位置を調べます
    execute if score @s FN.Success matches 1 run function fortcraft:function/bullet/hit_location

## ダメージを保存します
    execute store result score $Damage FN.Temporary run data get entity @e[tag=FN.Bullet,sort=nearest,limit=1] data.Damage

## 距離減衰の計算
    execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 300..600 if score @s FN.Success matches 1 run function fortcraft:items/carrot/hammer_assault_rifle/distance_decay
    execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 600.. run scoreboard players operation $Damage FN.Temporary *= $9 FN.Constant
     execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 600.. run scoreboard players operation $Damage FN.Temporary /= $10 FN.Constant

## ダメージを呼び出す
    execute if entity @s[tag=FN.HitBody] run function fortcraft:items/carrot/hammer_assault_rifle/body_damage

    execute if entity @s[tag=FN.HitHead] run function fortcraft:items/carrot/hammer_assault_rifle/head_damage
