execute as @e[type=minecraft:snowball,nbt={Item:{tag:{fireball:1b}}}] as @p at @s anchored eyes run function earth:customweapons/fireball/summon
execute as @e[type=fireball,tag=player,tag=!motion] at @s rotated as @p run function earth:customweapons/fireball/motion
