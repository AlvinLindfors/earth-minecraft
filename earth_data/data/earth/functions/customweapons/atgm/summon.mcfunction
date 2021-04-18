scoreboard players reset @s usecrossbow
execute at @s anchored eyes run summon dolphin ^ ^ ^1 {Tags:["ATGM","this"],NoAI:1b,Silent:1b,PersistenceRequired:1b}
scoreboard players operation @e[type=dolphin,tag=this] EOID0 = @s UUID0
scoreboard players operation @e[type=dolphin,tag=this] EOID1 = @s UUID1
scoreboard players operation @e[type=dolphin,tag=this] EOID2 = @s UUID2
scoreboard players operation @e[type=dolphin,tag=this] EOID3 = @s UUID3
tag @e remove this
