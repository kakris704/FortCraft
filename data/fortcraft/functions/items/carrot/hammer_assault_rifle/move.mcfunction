#> fortcraft:items/carrot/hammer_assault_rifle/move
#
# 弾を移動させる再帰ファンクション
#
# @within function fortcraft:items/carrot/flint_knock_pistol/shot

## 移動
    tp ^ ^ ^0.125

    #パーティクル
        execute if score @s FN.BulletTime matches 4.. run particle dust 0.522 0.522 0.522 0.225 ~ ~ ~ 0 0 0 0 1 force

    #キル
        scoreboard players add @s FN.BulletTime 1
        execute if score @s FN.BulletTime matches 800.. run function fortcraft:items/carrot/hammer_assault_rifle/bullet_kill
        execute unless block ~ ~ ~ #fortcraft:bullet_air_block run function fortcraft:items/carrot/hammer_assault_rifle/bullet_kill

    #ダメージ
        execute as @e[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @e[dx=0,dy=0,dz=0] at @s if predicate fortcraft:damage run function fortcraft:items/carrot/hammer_assault_rifle/bullet_hit

## 再帰(100ブロック分)
    execute if score @s FN.BulletTime matches ..799 positioned ^ ^ ^0.125 run function fortcraft:items/carrot/hammer_assault_rifle/move