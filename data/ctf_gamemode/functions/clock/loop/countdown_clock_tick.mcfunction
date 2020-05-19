execute if score ticks clocks matches 0..0 unless score countdown clocks matches 0..0 run title @a title {"score":{"name":"countdown","objective":"clocks"}}
execute if score countdown clocks matches 0..0 if score ticks clocks matches 0..0 run function ctf_gamemode:gamestates/utils/next_state
execute if score ticks clocks matches 0..0 run scoreboard players remove countdown clocks 1
execute if score ticks clocks matches 0..0 run scoreboard players set ticks clocks 20
scoreboard players remove ticks clocks 1
execute if score ticks clocks matches 0..0 if score countdown clocks matches 0..0 run title @a title {"text":"Go!"}