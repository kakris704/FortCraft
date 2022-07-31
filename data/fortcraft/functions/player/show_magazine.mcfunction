#> fortcraft:player/show_magazine
#
# マガジンを表示
#
# @within function fortcraft:player/tick

## 所持している弾を取得
    execute store result score $BulletID FN.Temporary run data get entity @s SelectedItem.tag.UseBulletID

    execute if score $BulletID FN.Temporary matches 0 store result score @s FN.HaveBullet run clear @s gunpowder{BulletID:0} 0
    execute if score $BulletID FN.Temporary matches 1 store result score @s FN.HaveBullet run clear @s gunpowder{BulletID:1} 0
    execute if score $BulletID FN.Temporary matches 2 store result score @s FN.HaveBullet run clear @s gunpowder{BulletID:2} 0
    execute if score $BulletID FN.Temporary matches 3 store result score @s FN.HaveBullet run clear @s gunpowder{BulletID:3} 0
    execute if score $BulletID FN.Temporary matches 4 store result score @s FN.HaveBullet run clear @s gunpowder{BulletID:4} 0

    title @s times 0 3 2
    execute if entity @s[tag=!FN.Reload] run title @s subtitle [{"text":"\uF82A\uF828\uF824\uF826","font":"slash"},{"score":{"name":"$BulletID","objective":"FN.Temporary"},"font":"bullet"},{"score":{"name":"@s","objective":"FN.Magazine"},"font":"bullet1"},{"text":"/","font":"slash"},{"score":{"name":"@s","objective":"FN.HaveBullet"},"font":"slash"},{"text":"\uF828","font":"slash"}]
    execute if entity @s[tag=FN.Reload] run function fortcraft:player/show_reload
    title @s title ""