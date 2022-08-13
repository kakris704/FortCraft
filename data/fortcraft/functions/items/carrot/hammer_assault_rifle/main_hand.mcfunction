#> fortcraft:items/carrot/hammer_assault_rifle/main_hand
#
# メインハンドに持った時
#
# @within function fortcraft:player/slot

## CMDを戻す

    execute unless predicate fortcraft:sneak run scoreboard players set @s FN.Accuracy 4000
    execute unless predicate fortcraft:sneak if entity @s[tag=!FN.Reload_HammerAssaultRifle] run item modify entity @s weapon.mainhand fortcraft:hammer_assault_rifle/normal_cmd
    execute if predicate fortcraft:sneak if entity @s[tag=!FN.Reload_HammerAssaultRifle] run item modify entity @s weapon.mainhand fortcraft:hammer_assault_rifle/ads_cmd
    execute if predicate fortcraft:sneak run scoreboard players remove @s FN.Accuracy 400
    scoreboard players operation @s FN.Accuracy > $0 FN.Temporary