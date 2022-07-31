#> fortcraft:function/random
#
# 乱数を生成する $Random Temporaryに出力
#
# @public

## キャリー付き乗算
    scoreboard players operation $random FN.Temporary *= @p FN.Random
    scoreboard players operation $random FN.Temporary *= $31743 FN.Constant
    scoreboard players add $carry FN.Temporary 25
    execute store result score $carry FN.Temporary run scoreboard players operation $random FN.Temporary += $carry FN.Temporary
    scoreboard players operation $carry FN.Temporary /= $65536 FN.Constant
    execute store result score $Random FN.Temporary run scoreboard players operation $random FN.Temporary %= $65536 FN.Constant