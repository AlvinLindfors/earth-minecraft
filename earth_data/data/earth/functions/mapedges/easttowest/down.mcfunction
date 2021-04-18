execute as @a[tag=easttowest] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~
execute as @a[tag=easttowest] at @s if block ~ ~-1 ~ minecraft:air run function earth:mapedges/easttowest/down
execute unless block ~ ~-1 ~ air run tag @a[tag=easttowest] remove easttowest
