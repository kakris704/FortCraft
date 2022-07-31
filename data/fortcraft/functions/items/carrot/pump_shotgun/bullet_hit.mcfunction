#> fortcraft:items/carrot/pump_shotgun/bullet_hit
#
# fortcraft:function/bulletを使っていろいろ調べる
#
# @within function fortcraft:items/carrot/pump_shotgun/move

## 撃った人じゃないことを調べます
    function fortcraft:function/bullet/uuid_check

## 当たった位置を調べます
    execute if score @s FN.Success matches 1 run function fortcraft:function/bullet/hit_location

## ダメージを保存します
    execute store result score $Damage FN.Temporary run data get entity @e[tag=FN.Bullet,sort=nearest,limit=1] data.Damage

## 距離減衰の計算
    execute as @e[tag=FN.Bullet,scores={FN.BulletTime=36..180}] if score @p FN.Success matches 1 run function fortcraft:items/carrot/pump_shotgun/distance_decay
    execute as @e[tag=FN.Bullet,scores={FN.BulletTime=180..}] run scoreboard players operation $Damage FN.Temporary /= $10 FN.Constant

## ダメージを呼び出す
    execute if entity @s[tag=FN.HitBody] run function fortcraft:items/carrot/pump_shotgun/body_damage

    execute if entity @s[tag=FN.HitHead] run function fortcraft:items/carrot/pump_shotgun/head_damage
