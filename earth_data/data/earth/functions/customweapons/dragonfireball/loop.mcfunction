execute as @e[type=minecraft:snowball,nbt={Item:{tag:{dragon_fireball:1b}}}] as @p at @s anchored eyes run function earth:customweapons/dragonfireball/summon
execute as @e[type=minecraft:dragon_fireball,tag=player,tag=!motion] at @s rotated as @p run function earth:customweapons/dragonfireball/motion
