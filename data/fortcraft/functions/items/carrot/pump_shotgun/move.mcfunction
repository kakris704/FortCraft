#>  fortcraft:items/carrot/pump_shotgun/move
#
# 弾を移動させる再帰ファンクション
#
# @within function fortcraft:items/carrot/pump_shotgun/shot

## 移動
    execute as @e[tag=FN.PumpShotgunBullet] at @s run tp ^ ^ ^0.125

    #パーティクル
        execute as @e[tag=FN.PumpShotgunBullet] at @s run particle dust 0.522 0.522 0.522 0.2 ~ ~ ~ 0 0 0 0 1 force

    # 音
        execute if score @s FN.BulletTime matches 150.. run playsound fortnite.bullet.whip master @a ~ ~ ~ 0.1

    #キル
        execute as @e[tag=FN.PumpShotgunBullet] at @s run scoreboard players add @s FN.BulletTime 1
        execute as @e[tag=FN.PumpShotgunBullet] at @s if score @s FN.BulletTime matches 800.. run function fortcraft:items/carrot/pump_shotgun/bullet_kill
        execute as @e[tag=FN.PumpShotgunBullet] at @s unless block ~ ~ ~ #fortcraft:bullet_air_block run function fortcraft:items/carrot/pump_shotgun/bullet_kill

    #ダメージ
        execute as @e[tag=FN.PumpShotgunBullet] at @s as @e[dx=0,dy=0,dz=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0,dy=0,dz=0] at @s if predicate fortcraft:damage run function fortcraft:items/carrot/pump_shotgun/bullet_hit

## 再帰(100ブロック分)
    execute if score @s FN.BulletTime matches ..799 positioned ^ ^ ^0.125 run function fortcraft:items/carrot/pump_shotgun/move
    kill @e[tag=FN.PumpShotgunBullet]