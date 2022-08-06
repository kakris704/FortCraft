#> fortcraft:items/carrot/rocket_launcher/reload/end
#
# リロードを中断
#
# @within function fortcraft:item/carrot/rocket_launcher/reload/*

## タグを削除
    tag @s remove FN.Reload
    tag @s remove FN.Reload_RocketLauncher

    attribute @s generic.movement_speed modifier remove 7bca958a-f7ff-43ba-87ce-49ac96811ee5