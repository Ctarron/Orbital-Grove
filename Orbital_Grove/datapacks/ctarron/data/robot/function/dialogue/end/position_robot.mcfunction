tp @s -90.59 18.5 153.70 0.30 37.65
execute at @s run rotate @p facing entity @s
data modify entity @n[type=minecraft:allay] equipment.mainhand set value {id:"minecraft:recovery_compass",count:1,components:{"minecraft:item_model":"ctarron:core"}}
data modify entity @n[type=minecraft:allay] NoAI set value 1b