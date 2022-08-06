#> fortcraft:reload
#
# リロード時実行
#
# @within tag/function minecraft:load

## スコアボード作成
    scoreboard objectives add FN.RightClick minecraft.used:minecraft.carrot_on_a_stick "人参棒右クリック"
    scoreboard objectives add FN.WeaponID dummy "持ってる武器のWeaponID"
    scoreboard objectives add FN.Temporary dummy "てんぽらりー"
    scoreboard objectives add FN.Constant dummy "こんすたんと"
    scoreboard objectives add FN.BulletTime dummy "弾のtick"
    scoreboard objectives add FN.Success dummy "成功回数"
    scoreboard objectives add FN.Shield dummy "プレイヤーのシールド"
    scoreboard objectives add FN.Health dummy "プレイヤーの体力"
    scoreboard objectives add FN.Random minecraft.custom:minecraft.total_world_time "乱数生成用"
    scoreboard objectives add FN.ItemRarity dummy "アイテムのレアリティ"
    scoreboard objectives add FN.ReloadTime dummy "リロード残り時間"
    scoreboard objectives add FN.Magazine dummy "マガジン内の弾薬"
    scoreboard objectives add FN.ReloadSlot dummy "リロード中の武器のスロット"
    scoreboard objectives add FN.ShotCoolTime dummy "射撃クールタイム"
    scoreboard objectives add FN.ShotCoolTimeSlot dummy "リロード中の武器のスロット"
    scoreboard objectives add FN.ReloadConsumeBullet dummy "リロードで消費する弾数"
    scoreboard objectives add FN.HaveBullet dummy "弾の所持数"
    scoreboard objectives add FN.ConsumeTime dummy "消費経過時間"
    scoreboard objectives add FN.ConsumeSlot dummy "消費スロット"
    scoreboard objectives add FN.Jump minecraft.custom:minecraft.jump "ジャンプ"
    scoreboard objectives add FN.Accuracy dummy "武器の精度"
    scoreboard objectives add FN.PlayTime minecraft.custom:minecraft.play_time "プレイ時間"
    scoreboard objectives add FN.PlayerNumber dummy "弾とプレイヤーの紐づけ"

## ConstantにConstantを
    scoreboard players set $-1 FN.Constant -1
    scoreboard players set $0 FN.Constant 0
    scoreboard players set $2 FN.Constant 2
    scoreboard players set $4 FN.Constant 4
    scoreboard players set $6 FN.Constant 6
    scoreboard players set $9 FN.Constant 9
    scoreboard players set $10 FN.Constant 10
    scoreboard players set $15 FN.Constant 15
    scoreboard players set $12 FN.Constant 12
    scoreboard players set $20 FN.Constant 20
    scoreboard players set $23 FN.Constant 23
    scoreboard players set $25 FN.Constant 25
    scoreboard players set $45 FN.Constant 45
    scoreboard players set $50 FN.Constant 50
    scoreboard players set $75 FN.Constant 75
    scoreboard players set $90 FN.Constant 90
    scoreboard players set $100 FN.Constant 100
    scoreboard players set $180 FN.Constant 180
    scoreboard players set $185 FN.Constant 185
    scoreboard players set $250 FN.Constant 250
    scoreboard players set $275 FN.Constant 275
    scoreboard players set $400 FN.Constant 400
    scoreboard players set $1000 FN.Constant 1000
    scoreboard players set $1500 FN.Constant 1500
    scoreboard players set $2000 FN.Constant 2000
    scoreboard players set $2500 FN.Constant 2500
    scoreboard players set $6000 FN.Constant 6000
    scoreboard players set $9000 FN.Constant 9000
    scoreboard players set $31743 FN.Constant 31743
    scoreboard players set $65536 FN.Constant 65536
    scoreboard players set $100000 FN.Constant 100000
    
## ストレージ作成
    data merge storage fortcraft:temporary {UUIDCheck:0,GetName:"",Calculation:0,ShowDamage:"",Bullet:0}

## ゲームルール
    gamerule naturalRegeneration false
    gamerule reducedDebugInfo true

## デバッグ
    tellraw kakris704 "リロード完了"