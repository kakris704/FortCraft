#> fortcraft:function/get_name
#
# プレイヤーの名前を取得
#
# @public

## fortcraft:temporary GetNameにプレイヤーの名前を入れる
    # プレイヤーヘッドをスポーン
        loot spawn ~ ~500 ~ loot fortcraft:get_name

    # 名前を取得
        execute positioned ~ ~500 ~ run data modify storage fortcraft:temporary GetName set from entity @e[type=item,sort=nearest,limit=1] Item.tag.SkullOwner.Name

    #アイテムをキル
        execute positioned ~ ~500 ~ run kill @e[type=item,sort=nearest,limit=1]