execute as @a[team=blue_team] at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:iron_block"}]}] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~-2 ~ minecraft:daylight_detector run tag @s add place_iron_flag
execute as @a[team=blue_team] at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:gold_block"}]}] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~-2 ~ minecraft:daylight_detector run tag @s add place_gold_flag
execute as @a[team=blue_team] at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:diamond_block"}]}] if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~-2 ~ minecraft:daylight_detector run tag @s add place_dia_flag
execute as @a[team=blue_team] at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:lapis_block"}]}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:daylight_detector run tag @s add place_lapis_flag
execute as @a[team=blue_team] at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:emerald_block"}]}] if block ~ ~-1 ~ minecraft:emerald_block if block ~ ~-2 ~ minecraft:daylight_detector run tag @s add place_emerald_flag

execute as @a[tag=place_iron_flag] run scoreboard players set iron monument 1
execute as @a[tag=place_gold_flag] run scoreboard players set gold monument 1
execute as @a[tag=place_dia_flag] run scoreboard players set dia monument 1
execute as @a[tag=place_lapis_flag] run scoreboard players set lapis monument 1
execute as @a[tag=place_emerald_flag] run scoreboard players set emerald monument 1

execute as @a[tag=place_iron_flag] run tellraw @a ["",{"selector":"@s"},{"text":" placed the "},{"text":"Iron Flag!","color":"gray"}]
execute as @a[tag=place_gold_flag] run tellraw @a ["",{"selector":"@s"},{"text":" placed the "},{"text":"Gold Flag!","color":"gold"}]
execute as @a[tag=place_dia_flag] run tellraw @a ["",{"selector":"@s"},{"text":" placed the "},{"text":"Diamond Flag!","color":"aqua"}]
execute as @a[tag=place_lapis_flag] run tellraw @a ["",{"selector":"@s"},{"text":" placed the "},{"text":"Lapis Flag!","color":"blue"}]
execute as @a[tag=place_emerald_flag] run tellraw @a ["",{"selector":"@s"},{"text":" placed the "},{"text":"Emerald Flag!","color":"green"}]

execute as @a[tag=place_iron_flag] run tellraw @a ["", {"score":{"name":"BONUS_TIME","objective":"CONSTANTS"}},{"text":" extra minutes has been awarded "}]
execute as @a[tag=place_gold_flag] run tellraw @a ["", {"score":{"name":"BONUS_TIME","objective":"CONSTANTS"}},{"text":" extra minutes has been awarded "}]
execute as @a[tag=place_dia_flag] run tellraw @a ["", {"score":{"name":"BONUS_TIME","objective":"CONSTANTS"}},{"text":" extra minutes has been awarded "}]
execute as @a[tag=place_lapis_flag] run tellraw @a ["", {"score":{"name":"BONUS_TIME","objective":"CONSTANTS"}},{"text":" extra minutes has been awarded "}]
execute as @a[tag=place_emerald_flag] run tellraw @a ["", {"score":{"name":"BONUS_TIME","objective":"CONSTANTS"}},{"text":" extra minutes has been awarded "}]

execute as @a[tag=place_iron_flag] run function ctf_gamemode:clock/add_bonus_time
execute as @a[tag=place_gold_flag] run function ctf_gamemode:clock/add_bonus_time
execute as @a[tag=place_dia_flag] run function ctf_gamemode:clock/add_bonus_time
execute as @a[tag=place_lapis_flag] run function ctf_gamemode:clock/add_bonus_time
execute as @a[tag=place_emerald_flag] run function ctf_gamemode:clock/add_bonus_time

execute as @a[tag=place_iron_flag] run clear @a minecraft:iron_block{Flag:1b}
execute as @a[tag=place_gold_flag] run clear @a minecraft:gold_block{Flag:1b}
execute as @a[tag=place_dia_flag] run clear @a minecraft:diamond_block{Flag:1b}
execute as @a[tag=place_lapis_flag] run clear @a minecraft:lapis_block{Flag:1b}
execute as @a[tag=place_emerald_flag] run clear @a minecraft:emerald_block{Flag:1b}

execute as @a[tag=place_iron_flag] run kill @e[nbt={Item:{id:"minecraft:iron_block",tag:{Flag:1b}}}]
execute as @a[tag=place_gold_flag] run kill @e[nbt={Item:{id:"minecraft:gold_block",tag:{Flag:1b}}}]
execute as @a[tag=place_dia_flag] run kill @e[nbt={Item:{id:"minecraft:diamond_block",tag:{Flag:1b}}}]
execute as @a[tag=place_lapis_flag] run kill @e[nbt={Item:{id:"minecraft:lapis_block",tag:{Flag:1b}}}]
execute as @a[tag=place_emerald_flag] run kill @e[nbt={Item:{id:"minecraft:emerald_block",tag:{Flag:1b}}}]

execute as @a[tag=place_iron_flag] at @s run setblock ~ ~-1 ~ minecraft:lime_concrete
execute as @a[tag=place_gold_flag] at @s run setblock ~ ~-1 ~ minecraft:lime_concrete
execute as @a[tag=place_dia_flag] at @s run setblock ~ ~-1 ~ minecraft:lime_concrete
execute as @a[tag=place_lapis_flag] at @s run setblock ~ ~-1 ~ minecraft:lime_concrete
execute as @a[tag=place_emerald_flag] at @s run setblock ~ ~-1 ~ minecraft:lime_concrete

execute as @a[team=blue_team] at @s if entity @a[tag=place_iron_flag] run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 2 1 1
execute as @a[team=blue_team] at @s if entity @a[tag=place_gold_flag] run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 2 1 1
execute as @a[team=blue_team] at @s if entity @a[tag=place_dia_flag] run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 2 1 1
execute as @a[team=blue_team] at @s if entity @a[tag=place_lapis_flag] run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 2 1 1
execute as @a[team=blue_team] at @s if entity @a[tag=place_emerald_flag] run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 2 1 1

execute as @a[team=red_team] at @s if entity @a[tag=place_iron_flag] run playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 2 0.3 1
execute as @a[team=red_team] at @s if entity @a[tag=place_gold_flag] run playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 2 0.3 1
execute as @a[team=red_team] at @s if entity @a[tag=place_dia_flag] run playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 2 0.3 1
execute as @a[team=red_team] at @s if entity @a[tag=place_lapis_flag] run playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 2 0.3 1
execute as @a[team=red_team] at @s if entity @a[tag=place_emerald_flag] run playsound minecraft:block.beacon.deactivate record @s ~ ~ ~ 2 0.3 1

execute as @a[tag=place_iron_flag] run tag @s remove place_iron_flag
execute as @a[tag=place_gold_flag] run tag @s remove place_gold_flag
execute as @a[tag=place_dia_flag] run tag @s remove place_dia_flag
execute as @a[tag=place_lapis_flag] run tag @s remove place_lapis_flag
execute as @a[tag=place_emerald_flag] run tag @s remove place_emerald_flag
