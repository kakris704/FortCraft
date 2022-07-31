#> fortcraft:items/consume
#
# リロード中
#
# @within function fortcraft:player/tick

##条件
    # 包帯
        execute if entity @s[tag=FN.Consume_Bandage] run function fortcraft:items/carrot/bandage/tick
    # 医療キット
        execute if entity @s[tag=FN.Consume_MedicKit] run function fortcraft:items/carrot/medic_kit/tick
    # ミニポ
        execute if entity @s[tag=FN.Consume_MiniShield] run function fortcraft:items/carrot/mini_shield/tick
    # ミニポ
        execute if entity @s[tag=FN.Consume_ShieldPotion] run function fortcraft:items/carrot/shield_potion/tick

