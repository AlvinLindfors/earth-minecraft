scoreboard players add @s life 1
execute as @s run function earth:customweapons/atgm/rotation
execute at @s unless block ~ ~ ~ minecraft:water run tp @s ^ ^ ^1
execute at @s if block ~ ~ ~ minecraft:water run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:campfire_cosy_smoke ^ ^ ^-5
execute at @s if entity @e[limit=1,sort=nearest,dx=0,dy=0,dz=0,type=!#minecraft:impact_projectiles,type=!#minecraft:arrows,type=!minecraft:area_effect_cloud,tag=!ATGM] as @s run function earth:customweapons/atgm/explode
execute if score @s life matches 200 as @s run function earth:customweapons/atgm/explode
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:snow unless block ~ ~ ~ minecraft:redstone_wire unless block ~ ~ ~ minecraft:grass unless block ~ ~ ~ minecraft:tall_grass unless block ~ ~ ~ minecraft:fern unless block ~ ~ ~ minecraft:dead_bush unless block ~ ~ ~ #minecraft:climbable unless block ~ ~ ~ #minecraft:bee_growables unless block ~ ~ ~ #minecraft:buttons unless block ~ ~ ~ #minecraft:flowers unless block ~ ~ ~ #minecraft:rails unless block ~ ~ ~ #minecraft:saplings unless block ~ ~ ~ #minecraft:underwater_bonemeals unless block ~ ~ ~ #minecraft:wall_post_override as @s run function earth:customweapons/atgm/explode
