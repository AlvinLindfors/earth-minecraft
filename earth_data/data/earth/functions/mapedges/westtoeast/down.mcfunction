execute as @a[tag=westtoeast] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
execute as @a[tag=westtoeast] at @s if block ~ ~-1 ~ minecraft:air run function earth:mapedges/westtoeast/down
execute unless block ~ ~-1 ~ air run tag @a[tag=westtoeast] remove westtoeast
