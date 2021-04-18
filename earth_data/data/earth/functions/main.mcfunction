# store positions and spawn locations of players and markers
execute as @a store result score @s xpos run data get entity @s Pos[0]
execute as @a store result score @s zpos run data get entity @s Pos[2]

execute as @e[type=minecraft:area_effect_cloud,tag=spawnmarker] store result score @s xpos run data get entity @s Pos[0]
execute as @e[type=minecraft:area_effect_cloud,tag=spawnmarker] store result score @s ypos run data get entity @s Pos[1]
execute as @e[type=minecraft:area_effect_cloud,tag=spawnmarker] store result score @s zpos run data get entity @s Pos[2]

execute as @a store result score @s xspawn run data get entity @s SpawnX
execute as @a store result score @s yspawn run data get entity @s SpawnY
execute as @a store result score @s zspawn run data get entity @s SpawnZ


# enable triggers
scoreboard players enable @a displayspawn
scoreboard players enable @a[scores={capture=0}] capture


# around the "globe"
execute as @a[gamemode=!creative] if score @s xpos > $Eastborder xpos at @s run function earth:mapedges/easttowest/switch
execute as @a[gamemode=!creative] if score @s xpos < $Westborder xpos at @s run function earth:mapedges/westtoeast/switch


# north and south map borders
execute as @a[gamemode=!creative] if score @s zpos < $Northborder zpos at @s run tp @s ~ ~ -18100.999
execute as @a[gamemode=!creative] if score @s zpos > $Southborder zpos at @s run tp @s ~ ~ 18100.999


# spawntp
execute as @a at @s if block ~ ~4 ~ minecraft:stone_slab[type=double,waterlogged=true] run function earth:death/spawntp


# /trigger displayspawn
execute as @a[scores={displayspawn=1}] run function earth:trigger/displayspawn


# time
scoreboard players add $t time 1
execute if score $t time matches 20.. run function earth:time/second
function earth:time/timetransfer
execute as @a if score @s time = $highest time run effect give @s glowing 1 0 true


# /trigger capture
execute as @a[scores={capture=1..}] run function earth:capture/getinformation
execute if score $finalviable potencapture matches -1 run function earth:capture/cancel


# army
scoreboard players set @a range 20
effect clear @e[type=!player,tag=armyeligable] glowing
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}] at @s run function earth:army/eligablemobs
execute as @a at @s anchored eyes if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}] if score @s time matches 60.. run function earth:army/startraycast
execute as @a[scores={armyconvert=1}] unless entity @s[tag=this] run scoreboard players reset @s armyconvert


# store UUIDs
execute as @e[tag=!storeUUID] run function earth:store/storeuuids
execute as @e[tag=storeUUID] store result score @s UUID0 run data get entity @s UUID[0]
execute as @e[tag=storeUUID] store result score @s UUID1 run data get entity @s UUID[1]
execute as @e[tag=storeUUID] store result score @s UUID3 run data get entity @s UUID[2]
execute as @e[tag=storeUUID] store result score @s UUID3 run data get entity @s UUID[3]


# store Rotations
execute as @e[tag=!storeRotation] run function earth:store/storerotations
execute as @e[tag=storeRotation] store result score @s Rotation0 run data get entity @s Rotation[0]
execute as @e[tag=storeRotation] store result score @s Rotation1 run data get entity @s Rotation[1]


# custom weapons

#- Anti-Tank Guided Missile (ATGM)
execute as @e[type=dolphin,tag=ATGM] run function earth:customweapons/atgm/loop
execute as @a[scores={usecrossbow=1..},nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{ATGM:1}}}] at @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:0b,Duration:1}]},limit=1,sort=nearest] run function earth:customweapons/atgm/summon
kill @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:0b,Duration:1}]}]
scoreboard players reset @a usecrossbow

#- Fireball
function earth:customweapons/fireball/loop
function earth:customweapons/dragonfireball/loop


# custom vehicles

#- Tank
execute as @e[type=dolphin,tag=turret] run function earth:customvehicles/tank/turret/loop
