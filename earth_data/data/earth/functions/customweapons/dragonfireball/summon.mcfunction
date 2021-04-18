summon minecraft:dragon_fireball ^ ^ ^0.5 {Tags:["player"]}

playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 1.2
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.5 1

kill @e[type=minecraft:snowball,nbt={Item:{tag:{dragon_fireball:1b}}},sort=nearest,limit=1]
