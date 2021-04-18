execute unless score number temp > 100 temp at @s run summon skeleton ~ ~ ~ {Team:"1",HandItems:[{id:"minecraft:bow",Count:1b},{}]}
scoreboard players add number temp 1
execute unless score number temp > 100 temp run function earth:temp/mob
execute if score number temp matches 101 run scoreboard players reset number temp
