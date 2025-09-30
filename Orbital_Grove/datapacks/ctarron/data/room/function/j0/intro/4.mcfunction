tag @a remove camera
tag @a remove warned
gamemode adventure @a
item replace entity @a armor.head with air
execute positioned -90.09 35.13 -293.91 as @n[type=minecraft:block_display,tag=camera] run kill @s
schedule clear core:camera/spectate
execute positioned -90.54 53.00 -312.73 as @a run function robot:summon
schedule function robot:dialogue/intro/1 1s