#> fortcraft:main
#
# 常時実行
#
# @within tag/function minecraft:tick

## プレイヤー
    execute as @a at @s run function fortcraft:player/tick

## アイテム
    execute as @e[type=item] at @s positioned ~ ~0.25 ~ run function fortcraft:item