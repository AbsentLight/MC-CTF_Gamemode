scoreboard players operation max clocks += BONUS_TIME CONSTANTS
execute store result bossbar minecraft:clock max run scoreboard players get max clocks
scoreboard players operation mins clocks += BONUS_TIME CONSTANTS

scoreboard players operation display_mins clocks = mins clocks
scoreboard players add display_mins clocks 1

execute store result bossbar minecraft:clock value run scoreboard players get display_mins clocks