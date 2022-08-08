#> fortcraft:items/carrot/flint_knock_pistol/main_hand
#
# メインハンドに持った時
#
# @within function fortcraft:player/slot

## CMDを戻す
    execute if entity @s[tag=!FN.Reload_FlintKnockPistol] run item modify entity @s weapon.mainhand fortcraft:flint_knock_pistol/normal_cmd

    execute unless predicate fortcraft:sneak run scoreboard players set @s FN.Accuracy 3500
    execute if predicate fortcraft:sneak if score @s FN.Accuracy matches 2001.. run scoreboard players remove @s FN.Accuracy 200
    scoreboard players operation @s FN.Accuracy > $2000 FN.Constant