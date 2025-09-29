execute positioned 20. -48. 95. as @e[tag=blinds,type=minecraft:item_display,limit=1,dx=1,dz=1,dy=5] run tp @s 20.5 -43.57 95.0625
fill 20 -49 79 20 -49 75 minecraft:light[level=15]
fill 18 -46 97 22 -48 97 minecraft:light[level=15]
playsound ctarron:lobby.blinds block @a 20.5 -46.0 96.5 2


schedule function room:lobby/alert 5s