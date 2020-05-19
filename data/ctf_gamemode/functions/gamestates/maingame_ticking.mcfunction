function ctf_gamemode:clock/loop/maingame_clock_tick
function ctf_gamemode:flags/flag_ticking

execute if score iron monument matches 1..1 if score gold monument matches 1..1 if score dia monument matches 1..1 if score overtime gameState matches 0..0 run function ctf_gamemode:gamestates/victory/blue_default