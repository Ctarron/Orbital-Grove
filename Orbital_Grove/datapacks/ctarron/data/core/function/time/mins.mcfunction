scoreboard players set .secs stats 0
scoreboard players add .mins stats 1
execute if score ..mins stats matches 60 run function core:time/hour