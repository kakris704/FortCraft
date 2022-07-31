#> fortcraft:items/carrot/flint_knock_pistol/slime_kill
#
# スライムをキル
#
# @within function fortcraft:items/carrot/flint_knock_pistol/jump

## kill
    tp @e[tag=FN.FlintKnock_Slime] ~ ~-1000 ~
    kill @e[tag=FN.FlintKnock_Slime]
    gamerule maxEntityCramming 24