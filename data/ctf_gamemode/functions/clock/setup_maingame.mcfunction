scoreboard players operation ticks clocks = TPS CONSTANTS
scoreboard players operation mins clocks = INITAL_MG_MINS CONSTANTS
scoreboard players operation max clocks = INITAL_MG_MINS CONSTANTS

execute store result bossbar minecraft:clock value run scoreboard players get INITAL_MG_MINS CONSTANTS
execute store result bossbar minecraft:clock max run scoreboard players get INITAL_MG_MINS CONSTANTS