execute as @a store result score @s tank_turret run data get entity @s RootVehicle.Entity.Passengers[1].Passengers[0].UUID[0]
execute as @s run function earth:customvehicles/tank/turret/rotation
