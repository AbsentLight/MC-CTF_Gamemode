tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Red Victory (Default)","color":"none"}]

stopsound @a *

title @a[team=blue_team] subtitle ["",{"text":"You ran out of time"}]
title @a[team=red_team] subtitle ["",{"text":"You held back the enemy"}]
title @a[team=blue_team] title ["",{"text":"Defeat","color":"red"}]
title @a[team=red_team] title ["",{"text":"Victory","color":"green"}]
title @a[team=spec_team] title ["",{"text":"Victory for Red","color":"dark_red"}]
title @a[team=] title ["",{"text":"Victory for Red","color":"dark_red"}]
execute as @a[team=red_team] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1 1
execute as @a[team=blue_team] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 2 0.3 1

function ctf_gamemode:gamestates/utils/advance_to_postgame