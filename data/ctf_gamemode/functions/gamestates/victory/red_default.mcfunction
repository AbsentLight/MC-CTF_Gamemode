tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Red Victory (Default)","color":"none"}]

title @a[team=blue_team] subtitle ["",{"text":"You ran out of time"}]
title @a[team=red_team] subtitle ["",{"text":"You held back the enemy"}]
title @a[team=blue_team] title ["",{"text":"Defeat","color":"red"}]
title @a[team=red_team] title ["",{"text":"Victory","color":"green"}]
title @a[team=] title ["",{"text":"Victory for Red","color":"dark_red"}]

function ctf_gamemode:gamestates/utils/advance_to_postgame