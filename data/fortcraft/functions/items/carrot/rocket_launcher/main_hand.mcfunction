#> fortcraft:items/carrot/rocket_launcher/main_hand
#
# メインハンドに持った時
#
# @within function fortcraft:player/slot

## CMDを戻す
    execute if entity @s[tag=!FN.Reload_RocketLauncher] run item modify entity @s weapon.mainhand fortcraft:rocket_launcher/normal_cmd