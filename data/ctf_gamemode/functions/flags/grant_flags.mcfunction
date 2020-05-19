execute as @a[team=blue_team] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:iron_block"}]}] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~-2 ~ minecraft:beacon if score iron monument matches 0..0 run tag @s add grant_iron_flag
execute as @a[tag=grant_iron_flag] run replaceitem entity @s armor.head minecraft:iron_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=grant_iron_flag] run tellraw @s ["",{"text":"You picked up the ","color":"white"},{"text":"Iron Flag!","color":"gray"}]
execute as @a[tag=grant_iron_flag] run tag @s remove grant_iron_flag

execute as @a[team=blue_team] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:gold_block"}]}] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~-2 ~ minecraft:beacon if score gold monument matches 0..0 run tag @s add grant_gold_flag
execute as @a[tag=grant_gold_flag] run replaceitem entity @s armor.head minecraft:gold_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=grant_gold_flag] run tellraw @s ["",{"text":"You picked up the ","color":"white"},{"text":"Gold Flag!","color":"gold"}]
execute as @a[tag=grant_gold_flag] run tag @s remove grant_gold_flag

execute as @a[team=blue_team] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:diamond_block"}]}] if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~-2 ~ minecraft:beacon if score dia monument matches 0..0 run tag @s add grant_dia_flag
execute as @a[tag=grant_dia_flag] run replaceitem entity @s armor.head minecraft:diamond_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=grant_dia_flag] run tellraw @s ["",{"text":"You picked up the ","color":"white"},{"text":"Diamond Flag!","color":"aqua"}]
execute as @a[tag=grant_dia_flag] run tag @s remove grant_dia_flag

execute as @a[team=blue_team] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:lapis_block"}]}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:beacon if score dia monument matches 0..0 run tag @s add grant_lapis_flag
execute as @a[tag=grant_lapis_flag] run replaceitem entity @s armor.head minecraft:lapis_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=grant_lapis_flag] run tellraw @s ["",{"text":"You picked up the ","color":"white"},{"text":"Lapis Flag!","color":"blue"}]
execute as @a[tag=grant_lapis_flag] run tag @s remove grant_lapis_flag

execute as @a[team=blue_team] at @s unless entity @s[nbt={Inventory:[{Slot:103b,tag:{Flag:1b},id:"minecraft:emerald_block"}]}] if block ~ ~-1 ~ minecraft:emerald_block if block ~ ~-2 ~ minecraft:beacon if score dia monument matches 0..0 run tag @s add grant_emerald_flag
execute as @a[tag=grant_emerald_flag] run replaceitem entity @s armor.head minecraft:emerald_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=grant_emerald_flag] run tellraw @s ["",{"text":"You picked up the ","color":"white"},{"text":"Emerald Flag!","color":"green"}]
execute as @a[tag=grant_emerald_flag] run tag @s remove grant_emerald_flag
