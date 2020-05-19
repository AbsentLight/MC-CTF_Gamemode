#	Clear existing flags
execute as @a[tag=clear_grant_iron] run clear @s minecraft:iron_block{Flag:1b}
execute as @a[tag=clear_grant_gold] run clear @s minecraft:gold_block{Flag:1b}
execute as @a[tag=clear_grant_dia] run clear @s minecraft:diamond_block{Flag:1b}
execute as @a[tag=clear_grant_lapis] run clear @s minecraft:lapis_block{Flag:1b}
execute as @a[tag=clear_grant_emerald] run clear @s minecraft:emerald_block{Flag:1b}

#	Return single flag and place on head
execute as @a[tag=clear_grant_iron] run replaceitem entity @s armor.head minecraft:iron_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=clear_grant_gold] run replaceitem entity @s armor.head minecraft:gold_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=clear_grant_dia] run replaceitem entity @s armor.head minecraft:diamond_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=clear_grant_lapis] run replaceitem entity @s armor.head minecraft:lapis_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1
execute as @a[tag=clear_grant_emerald] run replaceitem entity @s armor.head minecraft:emerald_block{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],Flag:1b} 1

#	Remove clear_grant tag
execute as @a[tag=clear_grant_iron] run tag @s remove clear_grant_iron
execute as @a[tag=clear_grant_gold] run tag @s remove clear_grant_gold
execute as @a[tag=clear_grant_dia] run tag @s remove clear_grant_dia
execute as @a[tag=clear_grant_lapis] run tag @s remove clear_grant_lapis
execute as @a[tag=clear_grant_emerald] run tag @s remove clear_grant_emerald
