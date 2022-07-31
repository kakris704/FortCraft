#> fortcraft:items/carrot/hammer_assault_rifle/distance_decay
#
# 距離減衰の計算
#
# @within function fortcraft:items/carrot/hammer_assault_rifle/bullet_hit

## 計算
    # めんどおおおおおお
        scoreboard players operation $Damage_Calculation FN.Temporary = @e[tag=FN.Bullet,sort=nearest,limit=1] FN.BulletTime
        scoreboard players operation $Damage_Calculation FN.Temporary /= $6 FN.Constant
        scoreboard players operation $Damage_Calculation FN.Temporary -= $50 FN.Constant
        scoreboard players operation $Damage_Calculation FN.Temporary *= $20 FN.Constant
        scoreboard players operation $Damage_Calculation2 FN.Temporary = $Damage FN.Temporary
        scoreboard players operation $Damage_Calculation2 FN.Temporary *= $Damage_Calculation FN.Temporary
        scoreboard players operation $Damage_Calculation2 FN.Temporary /= $10000 FN.Constant
        scoreboard players operation $Damage FN.Temporary -= $Damage_Calculation2 FN.Temporary