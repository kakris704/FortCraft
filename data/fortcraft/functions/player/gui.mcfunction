#> fortcraft:player/gui
#
# ShieldをActionBarに表示
#
# @within function fortcraft:player/tick

## 高負荷だぜ！
    execute if score @s FN.Shield matches ..0 run title @s actionbar {"text":"\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 1..5 run title @s actionbar {"text":"\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 6..10 run title @s actionbar {"text":"\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 11..15 run title @s actionbar {"text":"\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 16..20 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 21..25 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 26..30 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 31..35 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 36..40 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 41..45 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 46..50 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 51..55 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 56..60 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 61..65 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 66..70 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 71..75 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 76..80 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 81..85 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 86..90 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE012\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 91..95 run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE011\uF82B\uF82A\uF824","font":"shield"}
    execute if score @s FN.Shield matches 96.. run title @s actionbar {"text":"\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF802\uE010\uF82B\uF82A\uF824","font":"shield"}