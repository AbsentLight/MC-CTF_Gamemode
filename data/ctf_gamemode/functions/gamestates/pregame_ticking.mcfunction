scoreboard players set teamsReady gameState 0
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=true] run scoreboard players add teamsReady gameState 1
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=true] run scoreboard players add teamsReady gameState 1
execute if score teamsReady gameState matches 2..2 run function ctf_gamemode:gamestates/utils/next_state

execute as @a at @s if block ~ ~-1 ~ minecraft:white_concrete run team leave @s

execute as @a[team=!blue_team] at @s if block ~ ~-1 ~ minecraft:blue_concrete run tag @s add join_team_blue
execute as @a[tag=join_team_blue] run team join blue_team @s 
execute as @a[tag=join_team_blue] run tellraw @a ["",{"selector":"@s"},{"text":" joined the "},{"text":"Attackers","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Blue Team","color":"blue"}]}}]
execute as @a[tag=join_team_blue] run tag @s remove join_team_blue

execute as @a[team=!red_team] at @s if block ~ ~-1 ~ minecraft:red_concrete run tag @s add join_team_red
execute as @a[tag=join_team_red] run team join red_team @s 
execute as @a[tag=join_team_red] run tellraw @a ["",{"selector":"@s"},{"text":" joined the "},{"text":"Defenders","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Red Team","color":"red"}]}}]
execute as @a[tag=join_team_red] run tag @s remove join_team_red

execute as @a unless entity @s[nbt={foodSaturationLevel:20.0f}] run effect give @s minecraft:saturation 1

execute as @e[tag=map_origin] at @s run tp @a[distance=50..,tag=!exempt] @s