#> fortcraft:function/bullet/death
#
# プレイヤーをキル
#
# @public

## キル
    # gamerule
        gamerule showDeathMessages false
        #ちょっとした計算
            scoreboard players operation $KillLog FN.Temporary = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime
            scoreboard players operation $KillLog FN.Temporary /= $6 FN.Constant 

    # キル
        kill @s

    # 音
        playsound fortnite.player.eliminate master @a[tag=FN.Shooter]

    # キルログ
        gamerule showDeathMessages true
        tellraw @a [{"entity":"@e[tag=FN.Bullet,sort=nearest,limit=1]","nbt":"data.Name"},{"text":"が"},{"entity":"@e[tag=FN.Bullet,sort=nearest,limit=1]","nbt":"data.WeaponType"},{"text":"で"},{"selector":"@s","color":"red"},{"text":"を倒した("},{"score":{"name":"$KillLog","objective":"FN.Temporary"}},{"text":"m)"}]

    #処理
        scoreboard players set @s FN.Shield 100