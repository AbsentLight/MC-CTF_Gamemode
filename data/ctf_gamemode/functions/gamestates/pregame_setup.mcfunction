effect give @a minecraft:regeneration 9999 4
effect give @a minecraft:resistance 9999 4
gamemode adventure @a
clear @a

execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ lever[facing=west] run setblock ~ ~ ~ lever[facing=west] replace
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ lever[facing=east] run setblock ~ ~ ~ lever[facing=east] replace
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ lever[facing=north] run setblock ~ ~ ~ lever[facing=north] replace
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ lever[facing=south] run setblock ~ ~ ~ lever[facing=south] replace

execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ lever[facing=west] run setblock ~ ~ ~ lever[facing=west] replace
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ lever[facing=east] run setblock ~ ~ ~ lever[facing=east] replace
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ lever[facing=north] run setblock ~ ~ ~ lever[facing=north] replace
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ lever[facing=south] run setblock ~ ~ ~ lever[facing=south] replace

scoreboard players set stateInitialised gameState 1