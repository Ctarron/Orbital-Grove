schedule clear room:j0/tick
schedule clear robot:dialogue/intro/4
kill @e[type=minecraft:allay]
function room:load {room:lobby}
execute in minecraft:overworld run tp @s 20.65 -24.00 54.45 0.49 4.98