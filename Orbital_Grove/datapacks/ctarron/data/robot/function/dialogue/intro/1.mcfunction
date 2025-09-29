execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
tellraw @a ""
tellraw @a [{"color":"gold","text":"<???>"},{"color":"white","translate":"robot.intro.1"}]
rotate @p facing entity @n[type=allay] eyes
schedule function robot:dialogue/intro/2 3s
