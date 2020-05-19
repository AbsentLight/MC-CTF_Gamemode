function ctf_gamemode:flags/flag_ticking
function ctf_gamemode:gamestates/utils/check_start_overtime

execute if score iron monument matches 1..1 if score gold monument matches 1..1 if score dia monument matches 1..1 if score overtime gameState matches 1..1 run function ctf_gamemode:gamestates/victory/blue_overtime