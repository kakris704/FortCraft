#> fortcraft:function/bullet/hit_location
#
# 当たった位置を調べる(bodyはFN.HitBody,headはFN.HitHeadをタグ付け)
#
# @public

## タグ付け
    # 頭
        execute anchored eyes positioned ^ ^ ^ positioned ~-0.25 ~-0.25 ~-0.25 if entity @e[tag=FN.Bullet,dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=FN.Bullet,dx=0,dy=0,dz=0] run tag @s add FN.HitHead
        
    # 体
        execute if entity @s[tag=!FN.HitHead] run tag @s add FN.HitBody