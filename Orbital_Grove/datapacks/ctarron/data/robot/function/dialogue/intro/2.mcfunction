execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a [{"color":"gold","text":"<???>"},{"color":"white","translate":"robot.intro.2"},{"color":"gold","translate":"robot.name"},{"color":"white","translate":"robot.intro.2.5"}]
schedule function robot:dialogue/intro/3 5s
