effect clear @a minecraft:regeneration
effect clear @a minecraft:resistance
effect clear @a minecraft:saturation

function ctf_gamemode:clock/setup_maingame

execute as @e[tag=blue_spawn] at @s run tp @a[team=blue_team] ~ ~ ~
execute as @e[tag=red_spawn] at @s run tp @a[team=red_team] ~ ~ ~
execute as @e[tag=blue_spawn] at @s run spawnpoint @a[team=blue_team] ~ ~ ~
execute as @e[tag=red_spawn] at @s run spawnpoint @a[team=red_team] ~ ~ ~

gamemode adventure @a[team=!]

scoreboard players set stateInitialised gameState 1