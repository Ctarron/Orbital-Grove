execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
schedule function robot:dialogue/end/6 4s
title @a times 20 120 10
execute as @a run function player:to_black
execute if score .hours stats matches 0 if score .mins stats matches ..10 run return run tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.end.4.5"}]
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.end.4"}]
