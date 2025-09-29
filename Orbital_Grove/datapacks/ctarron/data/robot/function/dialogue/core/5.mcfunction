execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a ""
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.core.5"}]

schedule function robot:dialogue/core/6 2s