tag @s add this
execute as @a if score @s tank_turret = @e[type=dolphin,tag=this,limit=1] UUID0 at @e[type=dolphin,tag=this,limit=1] anchored eyes facing entity @s eyes positioned ^ ^ ^2 rotated as @e[type=dolphin,tag=this,limit=1] positioned ^ ^ ^5 facing entity @e[type=dolphin,tag=this,limit=1] eyes facing ^ ^ ^-1 positioned as @e[type=dolphin,tag=this,limit=1] run tp @e[type=dolphin,tag=this,limit=1] ^ ^ ^0.5 ~ ~
tag @e remove this
