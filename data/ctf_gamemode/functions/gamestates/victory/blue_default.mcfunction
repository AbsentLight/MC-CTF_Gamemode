tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Blue Victory (Default)","color":"none"}]

stopsound @a *

title @a[team=blue_team] subtitle ["",{"text":"Your team got all the flags"}]
title @a[team=red_team] subtitle ["",{"text":"The enemy got all the flags"}]
title @a[team=blue_team] title ["",{"text":"Victory","color":"green"}]
title @a[team=red_team] title ["",{"text":"Defeat","color":"red"}]
title @a[team=spec_team] title ["",{"text":"Victory for Blue","color":"blue"}]
title @a[team=] title ["",{"text":"Victory for Blue","color":"blue"}]
execute as @a[team=blue_team] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1 1
execute as @a[team=red_team] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 2 0.3 1

function ctf_gamemode:gamestates/utils/advance_to_postgame