#> fortcraft:items/carrot/flint_knock_pistol/bullet_hit
#
# fortcraft:function/bulletを使っていろいろ調べる
#
# @within function fortcraft:items/carrot/flint_knock_pistol/move

## 撃った人じゃないことを調べます
    function fortcraft:function/bullet/uuid_check

## 当たった位置を調べます
    execute if score @s FN.Success matches 1 run function fortcraft:function/bullet/hit_location

## ダメージを保存します
    execute store result score $Damage FN.Temporary run data get entity @e[tag=FN.Bullet,sort=nearest,limit=1] data.Damage

## 距離減衰の計算
    execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 120..240 if score @s FN.Success matches 1 run function fortcraft:items/carrot/flint_knock_pistol/distance_decay
    execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 240.. run scoreboard players operation $Damage FN.Temporary *= $45 FN.Constant
     execute if score @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime matches 240.. run scoreboard players operation $Damage FN.Temporary /= $100 FN.Constant

## ダメージを呼び出す
    execute if entity @s[tag=FN.HitBody] run function fortcraft:items/carrot/flint_knock_pistol/body_damage

    execute if entity @s[tag=FN.HitHead] run function fortcraft:items/carrot/flint_knock_pistol/head_damage
