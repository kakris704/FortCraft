#> fortcraft:function/bullet/uuid_check
#
# UUIDの比較をする
#
# @public

## 比較
    # ストレージにplayerのuuidを保存
        data modify storage fortcraft:temporary UUIDCheck set from entity @s UUID

    # ストレージにbulletのownerで上書き
        execute store success score @s FN.Success run data modify storage fortcraft:temporary UUIDCheck set from entity @e[tag=FN.Bullet,sort=nearest,limit=1] data.Owner