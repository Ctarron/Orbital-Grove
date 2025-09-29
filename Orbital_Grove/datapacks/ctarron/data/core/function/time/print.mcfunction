execute store result storage ctarron:current stats.hours int 1 run scoreboard players get .hours stats
execute store result storage ctarron:current stats.mins int 1 run scoreboard players get .mins stats
execute store result storage ctarron:current stats.secs int 1 run scoreboard players get .secs stats
execute store result storage ctarron:current stats.kurons int 1 run scoreboard players get .kurons stats

function core:time/print_ with storage ctarron:current stats