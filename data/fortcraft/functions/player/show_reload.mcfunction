#> fortcraft:player/show_reload
# 
# リロードの表示
#
# @within function fortcraft:player/show_magazine

## 計算
    scoreboard players operation $Reload1 FN.Temporary = $9000 FN.Constant
    execute store result score $Reload2 FN.Temporary run data get entity @s SelectedItem.tag.ReloadTime
    scoreboard players operation $Reload1 FN.Temporary /= $Reload2 FN.Temporary
    scoreboard players operation $Reload1 FN.Temporary *= @s FN.ReloadTime
    scoreboard players operation $Reload1 FN.Temporary /= $1000 FN.Constant

    scoreboard players add $Reload1 FN.Temporary 1
    execute if score $Reload1 FN.Temporary matches 9.. run scoreboard players set $Reload1 FN.Temporary 9
    execute if score $Reload1 FN.Temporary matches ..0 run scoreboard players set $Reload1 FN.Temporary 0

    scoreboard players operation $ShowReloadTime FN.Temporary = @s FN.ReloadTime
    scoreboard players operation $ShowReloadTime FN.Temporary /= $2 FN.Constant
    

## 表示
    title @s subtitle [{"text":"\uF82A\uF828\uF824","font":"slash"},{"score":{"name":"$ShowReloadTime","objective":"FN.Temporary"},"font":"reload_time","color":"yellow"},{"score":{"name":"$Reload1","objective":"FN.Temporary"},"font":"reload"},{"text":"\uF809\uF808\uF804"},{"score":{"name":"$BulletID","objective":"FN.Temporary"},"font":"bullet"},{"score":{"name":"@s","objective":"FN.Magazine"},"font":"bullet1"},{"text":"/","font":"slash"},{"score":{"name":"@s","objective":"FN.HaveBullet"},"font":"slash"}]