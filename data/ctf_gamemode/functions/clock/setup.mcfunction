scoreboard objectives add clocks dummy "Clocks"
scoreboard players set ticks clocks 0
scoreboard players set secs clocks 0
scoreboard players set mins clocks 0
scoreboard players set display_mins clocks 0

bossbar add clock "Clock"
bossbar set minecraft:clock max 1
bossbar set minecraft:clock value 1
bossbar set minecraft:clock name [{"text":"Awaiting Game Start","color":"white"}]
bossbar set minecraft:clock color pink
function ctf_gamemode:clock/show_clock
