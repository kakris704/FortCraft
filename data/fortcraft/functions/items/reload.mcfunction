#> fortcraft:items/reload
#
# リロード中
#
# @within function fortcraft:player/tick

## もってるぶき＾ー～～～～～～
    execute store result score @s FN.WeaponID run data get entity @s SelectedItem.tag.WeaponID

## わけーーー＝＝～～～＾
    # フリントノック
        execute if entity @s[tag=FN.Reload_FlintKnockPistol] run function fortcraft:items/carrot/flint_knock_pistol/reload/tick
    # ハンマーアサルトライフル
        execute if entity @s[tag=FN.Reload_HammerAssaultRifle] run function fortcraft:items/carrot/hammer_assault_rifle/reload/tick
    # ポンプショットガン
        execute if entity @s[tag=FN.Reload_PumpShotgun] run function fortcraft:items/carrot/pump_shotgun/reload/tick
    # ロケットランチャー
        execute if entity @s[tag=FN.Reload_RocketLauncher] run function fortcraft:items/carrot/rocket_launcher/reload/tick