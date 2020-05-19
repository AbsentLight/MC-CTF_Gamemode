tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Blue Victory (Overtime)","color":"none"}]

title @a[team=blue_team] subtitle ["",{"text":"Your team got all the flags"}]
title @a[team=red_team] subtitle ["",{"text":"The enemy got all the flags"}]
title @a[team=blue_team] title ["",{"text":"Victory","color":"green"}]
title @a[team=red_team] title ["",{"text":"Defeat","color":"red"}]
title @a[team=] title ["",{"text":"Victory for Blue","color":"blue"}]

function ctf_gamemode:gamestates/utils/advance_to_postgame