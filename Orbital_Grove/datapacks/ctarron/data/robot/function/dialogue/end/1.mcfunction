execute as @e[type=allay] run function robot:dialogue/end/position_robot
execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a ""
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.end.1"}]

schedule function robot:dialogue/end/2 3s