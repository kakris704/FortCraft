#> fortcraft:items/carrot/hammer_assault_rifle/shot
#
# ハンマーアサルトライフルの弾を発射
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/right_click

## 弾を出す
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.HammerAssaultRifleBullet","FN.Bullet"],data:{Rarity:0,WeaponType:"アサルトライフル",Name:""}}

    #NBTの設定
        # ダメージ
            execute anchored eyes positioned ^ ^ ^ run data modify entity @e[tag=FN.HammerAssaultRifleBullet,distance=..0.01,limit=1] data.Damage set from entity @s SelectedItem.tag.BulletDamage

        # Owner
            data modify entity @e[tag=FN.HammerAssaultRifleBullet,limit=1] data.Owner set from entity @s UUID

        # Name
            function fortcraft:function/get_name
            data modify entity @e[tag=FN.HammerAssaultRifleBullet,limit=1] data.Name set from storage fortcraft:temporary GetName

    #前に向ける
        execute anchored eyes run tp @e[tag=FN.HammerAssaultRifleBullet,limit=1] ^ ^ ^ ~ ~
  
    #弾をばらけさせる(要調整)
        #乱数生成
            function fortcraft:function/random
            scoreboard players operation $Random FN.Temporary %= @s FN.Accuracy
            scoreboard players operation $Accuracy1 FN.Temporary = $Random FN.Temporary
            function fortcraft:function/random
            scoreboard players operation $Random FN.Temporary %= @s FN.Accuracy
            scoreboard players operation $Accuracy2 FN.Temporary = $Random FN.Temporary

            execute if score @s FN.Accuracy matches 2.. as @e[tag=FN.HammerAssaultRifleBullet,limit=1] at @s run function fortcraft:function/bullet/random

        #条件わけ
            execute if predicate fortcraft:sneak rotated ~1 ~-1 run tp @s ~ ~ ~ ~ ~
    #後処理
        tag @s add FN.Shooter
        execute as @e[tag=FN.HammerAssaultRifleBullet] at @s run function fortcraft:items/carrot/hammer_assault_rifle/move
        # 弾を減らす
            execute store result storage fortcraft:temporary Bullet int 0.999999 run data get entity @s SelectedItem.tag.Magazine
            item modify entity @s weapon.mainhand fortcraft:remove_magazine

        # リコイル
            tag @s add FN.Recoil
            attribute @s generic.movement_speed modifier add 31206c9d-9dcd-4682-8d10-76eccd5ead98 "recoil" 0.01 add
            schedule function fortcraft:items/carrot/hammer_assault_rifle/recoil 3t

        # 射撃クールタイム
            scoreboard players add @s FN.ShotCoolTime 3
        # 精度
            scoreboard players add @s FN.Accuracy 3000
            scoreboard players operation @s FN.Accuracy < $6000 FN.Constant