#> fortcraft:player/show_time
# 
# 秒数の表示
#
# @within function fortcraft:player/tick

## 計算
    scoreboard players operation $ConsumeTime FN.Temporary = $9000 FN.Constant
    execute store result score $ConsumeTime2 FN.Temporary run data get entity @s SelectedItem.tag.ConsumeTime
    scoreboard players operation $ConsumeTime FN.Temporary /= $ConsumeTime2 FN.Temporary
    scoreboard players operation $ConsumeTime FN.Temporary *= @s FN.ConsumeTime
    scoreboard players operation $ConsumeTime FN.Temporary /= $1000 FN.Constant

    scoreboard players add $ConsumeTime FN.Temporary 1
    execute if score $ConsumeTime FN.Temporary matches 9.. run scoreboard players set $ConsumeTime FN.Temporary 9
    execute if score $ConsumeTime FN.Temporary matches ..0 run scoreboard players set $ConsumeTime FN.Temporary 0

    scoreboard players operation $ShotConsumeTime FN.Temporary = @s FN.ConsumeTime
    scoreboard players operation $ShotConsumeTime FN.Temporary /= $2 FN.Constant

## 表示
    title @s subtitle [{"text":"\uF82A\uF828\uF824","font":"slash"},{"score":{"name":"$ShotConsumeTime","objective":"FN.Temporary"},"font":"reload_time","color":"yellow"},{"score":{"name":"$ConsumeTime","objective":"FN.Temporary"},"font":"reload"}]
    title @s title ""