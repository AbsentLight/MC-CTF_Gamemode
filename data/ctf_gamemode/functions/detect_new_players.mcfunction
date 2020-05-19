# Get count of currently connected players
scoreboard players set players gameState 0
execute as @a run scoreboard players add players gameState 1

# Run update if player count has changed
execute unless score players gameState = lastPlayers gameState run function ctf_gamemode:clock/show_clock

# Record new player count into backward lookup
scoreboard players operation lastPlayers gameState = players gameState
