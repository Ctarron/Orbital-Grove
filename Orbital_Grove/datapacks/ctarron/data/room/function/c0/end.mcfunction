schedule clear core:time/secs
execute store result storage ctarron:current stats.hours int 1 run scoreboard players get .hours stats
execute store result storage ctarron:current stats.mins int 1 run scoreboard players get .mins stats
execute store result storage ctarron:current stats.secs int 1 run scoreboard players get .secs stats
execute store result storage ctarron:current stats.kurons int 1 run scoreboard players get .kurons stats

tp @s -90.5 ~ 155.5

fill -90 17 156 -92 17 154 minecraft:lime_stained_glass replace minecraft:cave_air
fill -92 18 155 -91 18 154 minecraft:lime_stained_glass replace minecraft:cave_air
playsound ctarron:tube block @a ~ ~1 ~ 2

execute positioned -90.5 19.00 155.5 run kill @n[distance=..1,type=item]
schedule function robot:dialogue/end/1 2s