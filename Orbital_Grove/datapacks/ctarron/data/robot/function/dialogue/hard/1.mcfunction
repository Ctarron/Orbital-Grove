execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a ""
tellraw @a [{"color":"gold","text":"<"},{"fallback":"BOT","translate":"robot.name"},{"text":"> "},{"color":"white","translate":"robot.hard.1"}]
schedule function robot:dialogue/hard/2 3s

tag @a add hard_mode
attribute @p minecraft:movement_speed base set 0
attribute @p minecraft:jump_strength base set 0