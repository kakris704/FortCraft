#> fortcraft:items/carrot/flint_knock_pistol/shot
#
# フリントノックの弾を発射
#
# @within function fortcraft:items/carrot/flint_knock_pistol/right_click

## スニークしてない時に自分を吹き飛ばす
    execute unless predicate fortcraft:sneak run function fortcraft:items/carrot/flint_knock_pistol/jump

        #スライムをパーティクルで隠す
            execute anchored eyes run particle minecraft:flash ^ ^ ^1 0 0 0 0.125 1 normal @s
        
        
        # 音
            playsound minecraft:fortnite.weapon.flintknock.shot master @a[distance=..7.5] ~ ~ ~ 5
            playsound minecraft:fortnite.weapon.flintknock.shot_medium master @a[distance=7.5..20] ~ ~ ~ 5
            playsound minecraft:fortnite.weapon.flintknock.shot_distant master @a[distance=20..50] ~ ~ ~ 10

            particle minecraft:firework ^ ^ ^ ^ ^ ^125000000 0.0000001 0 force

## 弾を出す
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.FlintKnockBullet","FN.Bullet"],data:{Rarity:0,WeaponType:"ピストル",Name:""}}

    #NBTの設定
        # ダメージ
            execute anchored eyes positioned ^ ^ ^ run data modify entity @e[tag=FN.FlintKnockBullet,distance=..0.01,limit=1] data.Damage set from entity @s SelectedItem.tag.BulletDamage

        # Owner
            data modify entity @e[tag=FN.FlintKnockBullet,limit=1] data.Owner set from entity @s UUID
            scoreboard players operation @e[tag=FN.FlintKnockBullet] FN.PlayerNumber = @s FN.PlayerNumber

        # Name
            function fortcraft:function/get_name
            data modify entity @e[tag=FN.FlintKnockBullet,limit=1] data.Name set from storage fortcraft:temporary GetName

    #前に向ける
        execute anchored eyes run tp @e[tag=FN.FlintKnockBullet,limit=1] ^ ^ ^ ~ ~
  
    #弾をばらけさせる(要調整)
        #乱数生成
            function fortcraft:function/random
            scoreboard players operation $Random FN.Temporary %= @s FN.Accuracy
            scoreboard players operation $Accuracy1 FN.Temporary = $Random FN.Temporary
            function fortcraft:function/random
            scoreboard players operation $Random FN.Temporary %= @s FN.Accuracy
            scoreboard players operation $Accuracy2 FN.Temporary = $Random FN.Temporary

            execute if score @s FN.Accuracy matches 2.. as @e[tag=FN.FlintKnockBullet,limit=1] at @s run function fortcraft:function/bullet/random

    #後処理
        tag @s add FN.Shooter
        execute as @e[tag=FN.FlintKnockBullet] at @s run function fortcraft:items/carrot/flint_knock_pistol/move
        # 弾を減らす
            execute store result storage fortcraft:temporary Bullet int 0.999999 run data get entity @s SelectedItem.tag.Magazine
            item modify entity @s weapon.mainhand fortcraft:remove_magazine

        # リコイル
            tag @s add FN.Recoil
            attribute @s generic.movement_speed modifier add 31206c9d-9dcd-4682-8d10-76eccd5ead98 "recoil" 0.01 add
            schedule function fortcraft:items/carrot/flint_knock_pistol/recoil 3t

        # 射撃クールタイム
            scoreboard players add @s FN.ShotCoolTime 15
