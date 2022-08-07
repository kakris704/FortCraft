#> fortcraft:items/carrot/rocket_launcher/shot
#
# ハンマーアサルトライフルの弾を発射
#
# @within function fortcraft:items/carrot/rocket_launcher/right_click

## 弾を出す
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.RocketLauncherBullet","FN.Bullet","FN.Summon"],data:{Rarity:0,WeaponType:"ロケットランチャー",Name:""}}

    #NBTの設定
        # ダメージ
            execute anchored eyes positioned ^ ^ ^ run data modify entity @e[tag=FN.RocketLauncherBullet,tag=FN.Summon,distance=..0.01,limit=1] data.Damage set from entity @s SelectedItem.tag.BulletDamage

        # Owner
            scoreboard players operation @e[tag=FN.RocketLauncherBullet,tag=FN.Summon] FN.PlayerNumber = @s FN.PlayerNumber

        # Name
            function fortcraft:function/get_name
            data modify entity @e[tag=FN.RocketLauncherBullet,limit=1] data.Name set from storage fortcraft:temporary GetName

    #前に向ける
        execute anchored eyes run tp @e[tag=FN.RocketLauncherBullet,tag=FN.Summon,limit=1] ^ ^ ^1 ~ ~

    #後処理
        # 弾からタグ削除
            tag @e[tag=FN.Summon] remove FN.Summon
            
        # 弾を減らす
            execute store result storage fortcraft:temporary Bullet int 0.999999 run data get entity @s SelectedItem.tag.Magazine
            item modify entity @s weapon.mainhand fortcraft:remove_magazine

        # リコイル
            tag @s add FN.Recoil
            attribute @s generic.movement_speed modifier add 31206c9d-9dcd-4682-8d10-76eccd5ead98 "recoil" 0.02 add
            schedule function fortcraft:items/carrot/rocket_launcher/recoil 3t

        # 射撃クールタイム
            scoreboard players add @s FN.ShotCoolTime 3
        # 音
            playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 0.1
            playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.1