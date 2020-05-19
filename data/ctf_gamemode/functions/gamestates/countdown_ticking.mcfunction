function ctf_gamemode:clock/loop/countdown_clock_tick
scoreboard players set teamsReady gameState 0
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=true] run scoreboard players add teamsReady gameState 1
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=true] run scoreboard players add teamsReady gameState 1
execute as @e[tag=red_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=false] run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Red Team ","color":"red"},{"text":"cancelled the countdown!","color":"none"}]
execute as @e[tag=blue_ready_lever] at @s if block ~ ~ ~ minecraft:lever[powered=false] run tellraw @a ["",{"text":"The ","color":"white"},{"text":"Blue Team ","color":"blue"},{"text":"cancelled the countdown!","color":"none"}]
execute unless score teamsReady gameState matches 2..2 run function ctf_gamemode:gamestates/utils/interrupt_countdown