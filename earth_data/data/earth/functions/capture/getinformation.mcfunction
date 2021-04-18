execute store result score $team potencapture run scoreboard players get @s imonteam
execute store result score $province potencapture run scoreboard players get @s capture
execute as @s run function earth:capture/checkownership
scoreboard players reset @s capture
function earth:capture/checkviability
