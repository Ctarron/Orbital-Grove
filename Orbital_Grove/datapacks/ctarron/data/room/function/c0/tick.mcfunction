execute positioned -90.5 18.00 7.5 as @a[tag=!in_c1,distance=..3] run function room:c0/enter_lab
execute positioned -90.5 14.00 72.5 as @a[tag=!in_c2,distance=..4] run tag @s add in_c2
execute positioned -90.5 14.00 137.5 as @a[tag=!in_c3,distance=..2] run function room:c0/enter_core_room
execute as @a at @s if entity @s[y=9,dy=-10] run function room:c0/to_checkpoint

execute positioned -90.5 17.00 155.5 as @a[distance=..0.5] at @s run return run function room:c0/end

schedule function room:c0/tick 2t