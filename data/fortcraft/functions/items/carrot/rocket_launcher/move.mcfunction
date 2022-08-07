#> fortcraft:items/carrot/rocket_launcher/move
#
# 弾を移動させる常時ファンクション
#
# @within function fortcraft:items/entity/bullet

## 移動
    tp ^ ^ ^0.125

    #パーティクル
        execute if score @s FN.BulletTime matches 4.. run particle smoke ~ ~ ~ ^ ^ ^-5000000 0.0000001 0 force
        execute if score @s FN.BulletTime matches 4.. run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 2 force

    # ロケット本体
        summon falling_block ~ ~-0.5 ~ {NoGravity:true,Tags:["FN.RocketFallingBlock"],BlockState:{Name:"minecraft:green_concrete"},Time:599,DropItem:false}

    #キル
        scoreboard players add @s FN.BulletTick 1
        scoreboard players add @s FN.BulletTime 1
        execute if score @s FN.BulletTime matches 1200.. run function fortcraft:items/carrot/rocket_launcher/explosion
        execute unless block ~ ~ ~ #fortcraft:bullet_air_block run function fortcraft:items/carrot/rocket_launcher/explosion

    #ダメージ
        execute if score @s FN.BulletTime matches 10.. as @e[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 as @e[dx=0,dy=0,dz=0] at @s if predicate fortcraft:damage as @e[tag=FN.RocketLauncherBullet,sort=nearest,limit=1] run function fortcraft:items/carrot/rocket_launcher/explosion

## 再帰(100ブロック分)
    execute if score @s FN.BulletTick matches ..6 positioned ^ ^ ^0.125 run function fortcraft:items/carrot/rocket_launcher/move
    scoreboard players set @s FN.BulletTick 0