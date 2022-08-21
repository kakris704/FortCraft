#> fortcraft:function/bullet/damage
#
# ダメージを与える($Damage Temporary)
#
# @public

## 処理
    # 計算
        execute if entity @s[tag=!FN.HitHead] unless score $Damage FN.Temporary <= @s FN.Shield as @a if score @s FN.PlayerNumber = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.PlayerNumber at @s anchored eyes run loot spawn ^ ^-0.25 ^1.5 loot fortcraft:show_damage
        execute if entity @s[tag=!FN.HitHead] if score $Damage FN.Temporary <= @s FN.Shield as @a if score @s FN.PlayerNumber = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.PlayerNumber at @s anchored eyes run loot spawn ^ ^-0.25 ^1.5 loot fortcraft:show_damage_shield
        execute if entity @s[tag=FN.HitHead] as @a if score @s FN.PlayerNumber = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.PlayerNumber at @s anchored eyes run loot spawn ^ ^-0.25 ^1.5 loot fortcraft:show_damage_head

        tag @s remove FN.HitHead

        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s CustomNameVisible set value true
        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s PickupDelay set value 100

        execute if score $Damage FN.Temporary >= @s FN.Shield run function fortcraft:function/bullet/damage/health
        execute if score $Damage FN.Temporary <= @s FN.Shield run particle dust 0 0.518 1 0.5 ~ ~0.75 ~ 0.3 0.5 0.3 1 75 force
        execute if score $Damage FN.Temporary <= @s FN.Shield run effect give @s instant_damage 1 30 true
        execute if score $Damage FN.Temporary <= @s FN.Shield run playsound fortnite.player.hit_shield_me master @s
        execute if score $Damage FN.Temporary <= @s FN.Shield as @a if score @s FN.PlayerNumber = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.PlayerNumber run playsound fortnite.player.hit_shield master @s ~ ~ ~ 1000
        execute if score $Damage FN.Temporary <= @s FN.Shield run scoreboard players operation @s FN.Shield -= $Damage FN.Temporary

