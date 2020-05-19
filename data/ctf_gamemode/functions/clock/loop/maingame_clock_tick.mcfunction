scoreboard players remove ticks clocks 1

# Second Elapsed
execute if score ticks clocks matches 0..0 run scoreboard players remove secs clocks 1
execute if score ticks clocks matches 0..0 run scoreboard players set ticks clocks 20

# Minute Elapsed
execute if score secs clocks matches -1..-1 run scoreboard players remove mins clocks 1

execute if score secs clocks matches -1..-1 run scoreboard players operation display_mins clocks = mins clocks
execute if score secs clocks matches -1..-1 run scoreboard players add display_mins clocks 1

# 	Update bossbar
execute if score secs clocks matches -1..-1 store result bossbar minecraft:clock value run scoreboard players get display_mins clocks
# 	Timed Events
execute if score secs clocks matches -1..-1 run function ctf_gamemode:clock/announce_time
# 	Wrap secs to 60
execute if score secs clocks matches -1..-1 run scoreboard players set secs clocks 59

bossbar set minecraft:clock name ["",{"text":"Clock: ","color":"yellow"},{"score":{"name":"mins","objective":"clocks"},"color":"gold"},{"text":" min, ","color":"yellow"},{"score":{"name":"secs","objective":"clocks"},"color":"gold"},{"text":" sec","color":"yellow"}]

execute if score mins clocks matches -1..-1 run function ctf_gamemode:clock/timer_end