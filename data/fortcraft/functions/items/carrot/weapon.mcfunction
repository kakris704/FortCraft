#> fortcraft:items/carrot/weapon
#
# 人参棒での右クリック
#
# @within function fortcraft:items/carrot/right_click

## 武器を調べる

    #フリントノックピストル
        execute if score @s FN.WeaponID matches 8001 run function fortcraft:items/carrot/flint_knock_pistol/right_click
    #ハンマーアサルトライフル
        execute if score @s FN.WeaponID matches 21001 run function fortcraft:items/carrot/hammer_assault_rifle/right_click
    #ポンプショットガン
        execute if score @s FN.WeaponID matches 1001 run function fortcraft:items/carrot/pump_shotgun/right_click

    #包帯
        execute if score @s FN.WeaponID matches 10001 run function fortcraft:items/carrot/bandage/right_click
    #医療キット
        execute if score @s FN.WeaponID matches 10002 run function fortcraft:items/carrot/medic_kit/right_click
    #ミニポ
        execute if score @s FN.WeaponID matches 10003 run function fortcraft:items/carrot/mini_shield/right_click
    #でかぽ
        execute if score @s FN.WeaponID matches 10004 run function fortcraft:items/carrot/shield_potion/right_click