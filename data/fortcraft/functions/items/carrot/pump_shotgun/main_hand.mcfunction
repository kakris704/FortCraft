#> fortcraft:items/carrot/pump_shotgun/main_hand
#
# メインハンドに持った時
#
# @within function fortcraft:player/slot

## CMDを戻す
    execute if entity @s[tag=!FN.Reload_PumpShotgun,nbt={SelectedItem:{tag:{Standard:true}}}] run item modify entity @s weapon.mainhand fortcraft:pump_shotgun/normal_cmd
    execute if entity @s[tag=!FN.Reload_PumpShotgun,nbt={SelectedItem:{tag:{Standard:false}}}] run item modify entity @s weapon.mainhand fortcraft:pump_shotgun/normal_cmd_gold