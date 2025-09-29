execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.hard.3"}]
schedule function robot:dialogue/hard/4 5s

title @a times 5 10 5
execute as @a run function player:to_black
schedule function room:j9/set_hard 10t