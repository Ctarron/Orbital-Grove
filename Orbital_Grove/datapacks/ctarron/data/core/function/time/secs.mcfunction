scoreboard players add .secs stats 1
execute if score .secs stats matches 60 run function core:time/mins

schedule function core:time/secs 1s