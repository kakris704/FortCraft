#> fortcraft:main
#
# 常時実行
#
# @within tag/function minecraft:tick

## プレイヤー
    execute as @a at @s run function fortcraft:player/tick

## 弾
    execute as @e[tag=FN.Bullet] at @s run function fortcraft:entity/bullet

## アイテム
    execute as @e[type=item] at @s positioned ~ ~0.25 ~ run function fortcraft:item