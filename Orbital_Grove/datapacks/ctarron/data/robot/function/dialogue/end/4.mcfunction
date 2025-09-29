execute at @e[type=allay] run playsound entity.allay.ambient_with_item voice @a ~ ~ ~ 10
schedule function robot:dialogue/end/5 4s

execute if score .hours stats matches 0 run data modify storage ctarron:current stats.variant set value mins
execute if score .hours stats matches 0 run data modify storage ctarron:current stats.hours set value ""
execute if score .hours stats matches 1 run data modify storage ctarron:current stats.variant set value hour
execute if score .hours stats matches 2.. run data modify storage ctarron:current stats.variant set value hours

function robot:dialogue/end/results_ with storage ctarron:current stats