item replace entity @a armor.head with minecraft:zombie_head[equippable={slot:"head",camera_overlay:"ctarron:absolute_cinema",equip_sound:"entity.allay.hurt"},enchantments={"minecraft:binding_curse":1},tooltip_display={hide_tooltip:true}]

summon block_display -95.55 63.93 -92.48 {teleport_duration:30,Rotation:[180F,0F],Tags:["camera","dynamic"]}
gamemode spectator @a
tag @a add camera
execute positioned -95.55 63.93 -92.48 run spectate @e[type=minecraft:block_display,tag=camera,limit=1,distance=..0.001] @a[limit=1]

execute positioned -95.55 63.93 -92.48 as @e[type=minecraft:block_display,tag=camera,limit=1,distance=..0.001] run tp @s -93.86 48.42 -124.76
schedule function room:j0/intro/0 30t
