execute as @a[tag=cleared] run return run function robot:dialogue/end/7
execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.end.5"}]

tag @a add cleared
function room:load {room:spawn}
tp @a 20.5 -24.00 62.5 180 0
execute as @a at @s run playsound ctarron:rewind voice @s ~ ~ ~ 10
kill @e[type=item]