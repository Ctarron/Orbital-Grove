execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.hard.4"}]

attribute @p minecraft:movement_speed base set 0.075
attribute @p minecraft:jump_strength base set 0.3
