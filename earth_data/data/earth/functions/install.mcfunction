# setup gamerules
gamerule announceAdvancements true
gamerule commandBlockOutput true
gamerule disableElytraMovementCheck false
gamerule disableRaids false
gamerule doDaylightCycle true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doImmediateRespawn false
gamerule doInsomnia true
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWeatherCycle true
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

# setup scoreboards
scoreboard objectives add xpos dummy
scoreboard players set $Eastborder xpos 36600
scoreboard players set $Westborder xpos -36600
scoreboard objectives add zpos dummy
scoreboard players set $Northborder zpos -18100
scoreboard players set $Southborder zpos 18100
scoreboard objectives add ypos dummy
scoreboard objectives add xspawn dummy
scoreboard objectives add zspawn dummy
scoreboard objectives add yspawn dummy
scoreboard objectives add displayspawn trigger
scoreboard players add time dummy
scoreboard objectives add killedbyplayer minecraft.killed_by:minecraft.player
scoreboard objectives add playerkills playerKillCount
scoreboard objectives add capture trigger
scoreboard objectives add captureset dummy
scoreboard objectives add potencapture dummy
scoreboard objectives add imonteam dummy
scoreboard objectives add range dummy
scoreboard objectives add armyconvert minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard players set $0 armyconvert 0
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add EOID0 dummy
scoreboard objectives add EOID1 dummy
scoreboard objectives add EOID2 dummy
scoreboard objectives add EOID3 dummy
scoreboard objectives add usecrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add life dummy
scoreboard objectives add tank_turret dummy
scoreboard objectives add Rotation0 dummy
scoreboard objectives add Rotation1 dummy
scoreboard objectives add FB_x1 dummy
scoreboard objectives add FB_y1 dummy
scoreboard objectives add FB_z1 dummy
scoreboard objectives add FB_x2 dummy
scoreboard objectives add FB_y2 dummy
scoreboard objectives add FB_z2 dummy

scoreboard objectives setdisplay list time

# setup teams
team add 1
team add 2
team add 3
team add 4
team add 5
team add 6
team add 7
team add 8
team add 9
team add 10
team add 11
team add 12
team add 13
team add 14
team add 15
team add 16
team add 17
team add 18
team add 19
team add 20
team add 21
team add 22
team add 23
team add 24
team add 25
team add 26
team add 27
team add 28
team add 29
team add 30
team add 31
team add 32
team add 33
team add 34
team add 35
team add 36
team add 37
team add 38
team add 39
team add 40
team add 41
team add 42
team add 43
team add 44
team add 45
team add 46
team add 47
team add 48
team add 49
team add 50

# setup worldspawn
fill 2 0 2 -2 5 -2 minecraft:bedrock
fill 0 1 0 0 4 0 minecraft:air
setblock 0 5 0 minecraft:stone_slab[type=double,waterlogged=true]
setworldspawn 0 1 0
