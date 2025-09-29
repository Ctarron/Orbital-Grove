execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
schedule function robot:dialogue/end/8 4s
title @a times 0 120 10
execute as @a run function player:to_black
tellraw @a [{"color":"aqua","text":"<"},{"text":"Ctarron"},{"text":"> "},{"color":"white","translate":"robot.end.6"}]
