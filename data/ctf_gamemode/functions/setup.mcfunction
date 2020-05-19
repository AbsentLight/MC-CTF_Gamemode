# Reset teams people are on
team leave @a

# Set gamerules
gamerule announceAdvancements false
gamerule disableRaids true
gamerule spectatorsGenerateChunks false
gamerule doFireTick false

# Loading
scoreboard objectives add globals dummy "Globals"
scoreboard players set gamemode_pack_loaded globals 1
function ctf_gamemode:constants

# Internal Setup
function ctf_gamemode:gamestates/setup
function ctf_gamemode:clock/setup
function ctf_gamemode:rules/setup
function ctf_gamemode:teams/setup
function ctf_gamemode:flags/setup


schedule function ctf_gamemode:detect_missing_dependancies 2s
