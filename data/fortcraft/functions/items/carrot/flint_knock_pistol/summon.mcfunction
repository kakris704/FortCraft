#> fortcraft:items/carrot/flint_knock_pistol/summon
#
# スライムを召喚させる再帰ファンクション
#
# @within function fortcraft:items/carrot/flint_knock_pistol/jump

## 召喚
    execute if score $Rotation FN.Temporary matches 1.. run summon magma_cube ^ ^ ^0.2 {Tags:["FN.FlintKnock_Slime"],NoAI:true,Invulnerable:true}

    #再帰
        scoreboard players remove $Rotation FN.Temporary 1
        execute unless score $Rotation FN.Temporary matches ..0 run function fortcraft:items/carrot/flint_knock_pistol/summon