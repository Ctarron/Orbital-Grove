scoreboard players set .mins stats 0
scoreboard players add .hours stats 1
execute if score .hours stats matches 24 run schedule clear core:time/secs