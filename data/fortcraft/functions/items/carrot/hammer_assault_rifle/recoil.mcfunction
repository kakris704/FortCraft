#> fortcraft:items/carrot/hammer_assault_rifle/recoil
#
# リコイル
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/shot

## movement_speedを削除
    execute as @a[tag=FN.Recoil] run attribute @s generic.movement_speed modifier remove 31206c9d-9dcd-4682-8d10-76eccd5ead98
    tag @a[tag=FN.Recoil] remove FN.Recoil