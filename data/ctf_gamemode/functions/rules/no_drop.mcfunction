execute as @e[type=minecraft:item] at @s run tp @s @p[distance=0..1,gamemode=adventure]
execute as @e[type=minecraft:item] run data modify entity @s PickupDelay set value 0