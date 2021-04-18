tag @s add this
execute as @a if score @s UUID0 = @e[type=dolphin,tag=this,limit=1] EOID0 if score @s UUID1 = @e[type=dolphin,tag=this,limit=1] EOID1 if score @s UUID2 = @e[type=dolphin,tag=this,limit=1] EOID2 if score @s UUID3 = @e[type=dolphin,tag=this,limit=1] EOID3 run data modify entity @e[type=dolphin,tag=this,limit=1] Rotation set from entity @s Rotation
tag @e remove this
