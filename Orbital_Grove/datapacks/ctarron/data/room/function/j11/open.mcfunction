execute positioned -18.0 35.0 -237.0 unless entity @a[dx=0.5,dy=0,dz=3] run return fail
attribute @p[distance=..5] minecraft:movement_speed base set 0
attribute @p[distance=..5] minecraft:jump_strength base set 0
attribute @p[distance=..5] minecraft:gravity base set 0
execute positioned -17.0 33.0 -234.0 as @n[type=item_display,tag=L,distance=..0.01] at @s run tp ~ ~ ~2
execute positioned -17.0 33.0 -236.0 as @n[type=item_display,tag=R,distance=..0.01] at @s run tp ~ ~ ~-2

playsound ctarron:plant.branch block @a -17.0 33.0 -234.0 1 1
playsound ctarron:plant.branch block @a -17.0 33.0 -236.0 1 1

rotate @p ~ 85

function robot:dialogue/lab/3

schedule function room:j11/fall 40t