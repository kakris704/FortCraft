#> fortcraft:items/carrot/pump_shotgun/shot
#
# ポンプショットガンの弾を発射
#
# @within function fortcraft:items/carrot/pump_shotgun/right_click

## 弾を出す
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.PumpShotgunBullet","FN.Bullet","FN.1"],data:{Rarity:0,WeaponType:"ショットガン",Name:""}}
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.PumpShotgunBullet","FN.Bullet","FN.2"],data:{Rarity:0,WeaponType:"ショットガン",Name:""}}
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.PumpShotgunBullet","FN.Bullet","FN.3"],data:{Rarity:0,WeaponType:"ショットガン",Name:""}}
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.PumpShotgunBullet","FN.Bullet","FN.4"],data:{Rarity:0,WeaponType:"ショットガン",Name:""}}
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["FN.PumpShotgunBullet","FN.Bullet","FN.5"],data:{Rarity:0,WeaponType:"ショットガン",Name:""}}

    # 弾を減らす
        execute store result storage fortcraft:temporary Bullet int 0.999999 run data get entity @s SelectedItem.tag.Magazine
        item modify entity @s weapon.mainhand fortcraft:remove_magazine

    # リコイル
        tag @s add FN.Recoil
        attribute @s generic.movement_speed modifier add 31206c9d-9dcd-4682-8d10-76eccd5ead98 "recoil" 0.01 add
        schedule function fortcraft:items/carrot/pump_shotgun/recoil 3t
    # 音
        execute if entity @s[nbt={SelectedItem:{tag:{Standard:true}}}] run playsound fortnite.weapon.pump.shot master @a[distance=..7.5] ~ ~ ~ 5
        execute if entity @s[nbt={SelectedItem:{tag:{Standard:true}}}] run playsound minecraft:fortnite.weapon.pump.shot_medium master @a[distance=7.5..20] ~ ~ ~ 5
        execute if entity @s[nbt={SelectedItem:{tag:{Standard:true}}}] run playsound minecraft:fortnite.weapon.pump.shot_distant master @a[distance=20..50] ~ ~ ~ 10

    #NBTの設定
        # ダメージ
            execute anchored eyes positioned ^ ^ ^ as @e[tag=FN.PumpShotgunBullet,distance=..0.01] run data modify entity @s data.Damage set from entity @p SelectedItem.tag.BulletDamage

        # Owner
            execute as @e[tag=FN.PumpShotgunBullet] run data modify entity @s data.Owner set from entity @p UUID
            scoreboard players operation @e[tag=FN.PumpShotgunBullet] FN.PlayerNumber = @s FN.PlayerNumber

        # Name
            function fortcraft:function/get_name
            execute as @e[tag=FN.PumpShotgunBullet] run data modify entity @s data.Name set from storage fortcraft:temporary GetName

    #前に向ける
        execute anchored eyes run summon marker ^ ^ ^10 {Tags:["FN.FacingMarker"]}
        execute unless predicate fortcraft:sneak anchored eyes positioned ^-0.3 ^-0.2 ^0.1 facing entity @e[tag=FN.FacingMarker] eyes run tp @e[tag=FN.PumpShotgunBullet] ~ ~ ~ ~ ~
        execute if predicate fortcraft:sneak anchored eyes run tp @e[tag=FN.PumpShotgunBullet] ^ ^ ^ ~ ~
        kill @e[tag=FN.FacingMarker]
  
    #弾をばらけさせる
        #条件わけ
            execute as @e[tag=FN.PumpShotgunBullet] at @s run function fortcraft:items/carrot/pump_shotgun/random

    #後処理
        tag @s add FN.Shooter
        execute as @e[tag=FN.1] at @s run function fortcraft:items/carrot/pump_shotgun/move
  
        # 射撃クールタイム
            scoreboard players add @s FN.ShotCoolTime 28
