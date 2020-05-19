scoreboard players set iron otAvail 0
scoreboard players set gold otAvail 0
scoreboard players set dia otAvail 0
scoreboard players set lapis otAvail 0
scoreboard players set emerald otAvail 0

# Check if blue team holds missing block
execute if score iron monument matches 0..0 if entity @a[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:iron_block"}]}] run scoreboard players set iron otAvail 1
execute if score gold monument matches 0..0 if entity @a[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:gold_block"}]}] run scoreboard players set gold otAvail 1
execute if score dia monument matches 0..0 if entity @a[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:diamond_block"}]}] run scoreboard players set dia otAvail 1
execute if score lapis monument matches 0..0 if entity @a[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:lapis_block"}]}] run scoreboard players set lapis otAvail 1
execute if score emerald monument matches 0..0 if entity @a[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:emerald_block"}]}] run scoreboard players set emerald otAvail 1

# Check if missing flag exists in world
execute if score iron monument matches 0..0 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block",tag:{Flag:1b}}}] run scoreboard players set iron otAvail 1
execute if score gold monument matches 0..0 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",tag:{Flag:1b}}}] run scoreboard players set gold otAvail 1
execute if score dia monument matches 0..0 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block",tag:{Flag:1b}}}] run scoreboard players set dia otAvail 1
execute if score lapis monument matches 0..0 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block",tag:{Flag:1b}}}] run scoreboard players set lapis otAvail 1
execute if score emerald monument matches 0..0 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald_block",tag:{Flag:1b}}}] run scoreboard players set emerald otAvail 1

# Set gamestate to overtime if flags are available
execute if score overtime gameState matches 0..0 if score iron monument matches 0..0 if score iron otAvail matches 1..1 run scoreboard players set overtime gameState 1
execute if score overtime gameState matches 0..0 if score gold monument matches 0..0 if score gold otAvail matches 1..1 run scoreboard players set overtime gameState 1
execute if score overtime gameState matches 0..0 if score dia monument matches 0..0 if score dia otAvail matches 1..1 run scoreboard players set overtime gameState 1
execute if score overtime gameState matches 0..0 if score lapis monument matches 0..0 if score lapis otAvail matches 1..1 run scoreboard players set overtime gameState 1
execute if score overtime gameState matches 0..0 if score emerald monument matches 0..0 if score emerald otAvail matches 1..1 run scoreboard players set overtime gameState 1

# Execute if any of the flags are unavailable and in overtime
execute if score state gameState matches 3..3 if score overtime gameState matches 1..1 if score iron monument matches 0..0 unless score iron otAvail matches 1..1 run function ctf_gamemode:gamestates/victory/red_overtime
execute if score state gameState matches 3..3 if score overtime gameState matches 1..1 if score gold monument matches 0..0 unless score gold otAvail matches 1..1 run function ctf_gamemode:gamestates/victory/red_overtime
execute if score state gameState matches 3..3 if score overtime gameState matches 1..1 if score dia monument matches 0..0 unless score dia otAvail matches 1..1 run function ctf_gamemode:gamestates/victory/red_overtime
execute if score state gameState matches 3..3 if score overtime gameState matches 1..1 if score lapis monument matches 0..0 unless score lapis otAvail matches 1..1 run function ctf_gamemode:gamestates/victory/red_overtime
execute if score state gameState matches 3..3 if score overtime gameState matches 1..1 if score emerald monument matches 0..0 unless score emerald otAvail matches 1..1 run function ctf_gamemode:gamestates/victory/red_overtime

# Execute if any of the flags are unavailable and not in overtime
execute if score state gameState matches 2..2 if score overtime gameState matches 0..0 if score iron monument matches 0..0 run function ctf_gamemode:gamestates/victory/red_default
execute if score state gameState matches 2..2 if score overtime gameState matches 0..0 if score gold monument matches 0..0 run function ctf_gamemode:gamestates/victory/red_default
execute if score state gameState matches 2..2 if score overtime gameState matches 0..0 if score dia monument matches 0..0 run function ctf_gamemode:gamestates/victory/red_default
execute if score state gameState matches 2..2 if score overtime gameState matches 0..0 if score lapis monument matches 0..0 run function ctf_gamemode:gamestates/victory/red_default
execute if score state gameState matches 2..2 if score overtime gameState matches 0..0 if score emerald monument matches 0..0 run function ctf_gamemode:gamestates/victory/red_default

# Execute if gamestate is maingame and overtime is available
execute if score state gameState matches 2..2 if score overtime gameState matches 1..1 run function ctf_gamemode:gamestates/utils/start_overtime
