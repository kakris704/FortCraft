#> fortcraft:function/bullet/damage
#
# ダメージを与える($Damage Temporary)
#
# @public

## 処理
    # 計算
        execute unless score $Damage FN.Temporary <= @s FN.Shield as @e[tag=FN.Shooter] at @s anchored eyes run loot spawn ^ ^-0.25 ^1 loot fortcraft:show_damage
        execute if score $Damage FN.Temporary <= @s FN.Shield as @e[tag=FN.Shooter] at @s anchored eyes run loot spawn ^ ^-0.25 ^1 loot fortcraft:show_damage_shield

        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s CustomNameVisible set value true
        execute as @e[type=item,nbt={Item:{tag:{ShowDamage:true}}}] run data modify entity @s PickupDelay set value 100

        execute if score $Damage FN.Temporary >= @s FN.Shield run function fortcraft:function/bullet/damage/health
        execute if score $Damage FN.Temporary <= @s FN.Shield run particle dust 0 0.518 1 0.5 ~ ~0.75 ~ 0.3 0.5 0.3 1 75 force
        execute if score $Damage FN.Temporary <= @s FN.Shield run effect give @s instant_damage 1 30 true
        execute if score $Damage FN.Temporary <= @s FN.Shield run playsound fortnite.player.hit_shield_me master @s
        execute if score $Damage FN.Temporary <= @s FN.Shield run playsound fortnite.player.hit_shield master @a[tag=FN.Shooter]
        execute if score $Damage FN.Temporary <= @s FN.Shield run scoreboard players operation @s FN.Shield -= $Damage FN.Temporary

