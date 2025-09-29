kill @e[tag=dynamic]
fill 20 -49 93 20 -49 75 minecraft:air
fill 18 -46 97 22 -48 97 minecraft:air
setblock 31 -48 69 minecraft:air

tag @a remove pickaxe
clear @a iron_pickaxe

execute as @a run function player:scale/small

schedule clear #room:scheduled/lobby
schedule clear room:lobby/ladder_check
schedule clear room:lobby/blinds/check