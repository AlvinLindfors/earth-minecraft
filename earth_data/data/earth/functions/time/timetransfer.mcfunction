execute as @a[scores={playerkills=1}] run scoreboard players operation @s time += @a[scores={killedbyplayer=1}] time
execute as @a[scores={playerkills=1}] run scoreboard players reset @s playerkills
execute as @a[scores={killedbyplayer=1}] run scoreboard players reset @s time
execute as @a[scores={killedbyplayer=1}] run scoreboard players reset @s killedbyplayer
