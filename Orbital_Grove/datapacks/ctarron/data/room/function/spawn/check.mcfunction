execute store result score .frozen stats run data get entity @s TicksFrozen
execute unless score .frozen stats matches 130.. run return fail
schedule clear room:spawn/tick
schedule function room:spawn/to_lobby 1s
title @s times 5 40 5
function player:to_white