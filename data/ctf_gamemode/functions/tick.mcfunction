
function ctf_gamemode:detect_new_players

execute if score state gameState matches 0..0 if score stateInitialised gameState matches 0..0 run function ctf_gamemode:gamestates/pregame_setup
execute if score state gameState matches 0..0 if score stateInitialised gameState matches 1..1 run function ctf_gamemode:gamestates/pregame_ticking

execute if score state gameState matches 1..1 if score stateInitialised gameState matches 0..0 run function ctf_gamemode:gamestates/countdown_setup
execute if score state gameState matches 1..1 if score stateInitialised gameState matches 1..1 run function ctf_gamemode:gamestates/countdown_ticking

execute if score state gameState matches 2..2 if score stateInitialised gameState matches 0..0 run function ctf_gamemode:gamestates/maingame_setup
execute if score state gameState matches 2..2 if score stateInitialised gameState matches 1..1 run function ctf_gamemode:gamestates/maingame_ticking

execute if score state gameState matches 3..3 if score stateInitialised gameState matches 0..0 run function ctf_gamemode:gamestates/overtime_setup
execute if score state gameState matches 3..3 if score stateInitialised gameState matches 1..1 run function ctf_gamemode:gamestates/overtime_ticking

execute if score state gameState matches 3..3 if score stateInitialised gameState matches 0..0 run function ctf_gamemode:gamestates/endgame_setup
execute if score state gameState matches 3..3 if score stateInitialised gameState matches 1..1 run function ctf_gamemode:gamestates/endgame_ticking

execute unless score no_drop rules matches 0..0 run function ctf_gamemode:rules/no_drop
execute unless score min_death_drops rules matches 0..0 run function ctf_gamemode:rules/limit_death_drops
