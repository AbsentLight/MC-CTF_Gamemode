scoreboard objectives add hasIronFlag dummy
scoreboard objectives add hasGoldFlag dummy
scoreboard objectives add hasDiaFlag dummy

scoreboard objectives add monument dummy
scoreboard players set iron monument 0
scoreboard players set gold monument 0
scoreboard players set dia monument 0

execute as @e[tag=lapis_flag_monument] at @s run setblock ~ ~ ~ minecraft:lapis_block
execute as @e[tag=emerald_flag_monument] at @s run setblock ~ ~ ~ minecraft:emerald_block
execute as @e[tag=gold_flag_monument] at @s run setblock ~ ~ ~ minecraft:gold_block
execute as @e[tag=iron_flag_monument] at @s run setblock ~ ~ ~ minecraft:iron_block
execute as @e[tag=dia_flag_monument] at @s run setblock ~ ~ ~ minecraft:diamond_block
