# Get counts of flag items in players inventories
execute as @a store result score @s hasIronFlag run clear @s minecraft:iron_block{Flag:1b} 0
execute as @a store result score @s hasGoldFlag run clear @s minecraft:gold_block{Flag:1b} 0
execute as @a store result score @s hasDiaFlag run clear @s minecraft:diamond_block{Flag:1b} 0
execute as @a store result score @s hasLapisFlag run clear @s minecraft:lapis_block{Flag:1b} 0
execute as @a store result score @s hasEmeraldFlag run clear @s minecraft:emerald_block{Flag:1b} 0

# Clear flags based on priority
execute as @a if score @s hasLapisFlag matches 1.. if score @s hasIronFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}

execute as @a if score @s hasLapisFlag matches 1.. if score @s hasGoldFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}
execute as @a if score @s hasIronFlag matches 1.. if score @s hasGoldFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}

execute as @a if score @s hasLapisFlag matches 1.. if score @s hasEmeraldFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}
execute as @a if score @s hasIronFlag matches 1.. if score @s hasEmeraldFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}
execute as @a if score @s hasGoldFlag matches 1.. if score @s hasEmeraldFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}

execute as @a if score @s hasLapisFlag matches 1.. if score @s hasDiaFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}
execute as @a if score @s hasIronFlag matches 1.. if score @s hasDiaFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}
execute as @a if score @s hasGoldFlag matches 1.. if score @s hasDiaFlag matches 1.. run clear @s minecraft:gold_block{Flag:1b}
execute as @a if score @s hasEmeraldFlag matches 1.. if score @s hasDiaFlag matches 1.. run clear @s minecraft:iron_block{Flag:1b}

# Clear excess flags
#	Tag entities with excess flags
execute as @a if entity @s[nbt={Inventory:[{tag:{Flag:1b},id:"minecraft:iron_block"}]}] if score @s hasIronFlag matches 2.. run tag @s add clear_grant_iron
execute as @a if entity @s[nbt={Inventory:[{tag:{Flag:1b},id:"minecraft:gold_block"}]}] if score @s hasGoldFlag matches 2.. run tag @s add clear_grant_gold
execute as @a if entity @s[nbt={Inventory:[{tag:{Flag:1b},id:"minecraft:diamond_block"}]}] if score @s hasDiaFlag matches 2.. run tag @s add clear_grant_dia
execute as @a if entity @s[nbt={Inventory:[{tag:{Flag:1b},id:"minecraft:lapis_block"}]}] if score @s hasLapisFlag matches 2.. run tag @s add clear_grant_lapis
execute as @a if entity @s[nbt={Inventory:[{tag:{Flag:1b},id:"minecraft:emerald_block"}]}] if score @s hasEmeraldFlag matches 2.. run tag @s add clear_grant_emerald

function ctf_gamemode:flags/utils/clear_grant_flag

# Verify if they have a single flag, it is placed on their head
execute as @a store result score @s hasIronFlag run clear @s minecraft:iron_block{Flag:1b} 0
execute as @a store result score @s hasGoldFlag run clear @s minecraft:gold_block{Flag:1b} 0
execute as @a store result score @s hasDiaFlag run clear @s minecraft:diamond_block{Flag:1b} 0
execute as @a store result score @s hasLapisFlag run clear @s minecraft:lapis_block{Flag:1b} 0
execute as @a store result score @s hasEmeraldFlag run clear @s minecraft:emerald_block{Flag:1b} 0

execute as @a if score @s hasIronFlag matches 1..1 unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:iron_block"}]}] run tag @s add clear_grant_iron
execute as @a if score @s hasGoldFlag matches 1..1 unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:gold_block"}]}] run tag @s add clear_grant_gold
execute as @a if score @s hasDiaFlag matches 1..1 unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:diamond_block"}]}] run tag @s add clear_grant_dia
execute as @a if score @s hasLapisFlag matches 1..1 unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:lapis_block"}]}] run tag @s add clear_grant_lapis
execute as @a if score @s hasEmeraldFlag matches 1..1 unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:emerald_block"}]}] run tag @s add clear_grant_emerald

function ctf_gamemode:flags/utils/clear_grant_flag
