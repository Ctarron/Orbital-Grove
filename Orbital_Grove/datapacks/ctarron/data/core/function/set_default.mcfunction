function room:load {room:spawn}
tag @a remove cleared
kill @a
kill @e[type=allay]
advancement revoke @a everything
scoreboard players set .hours stats 0
scoreboard players set .mins stats 0
scoreboard players set .secs stats 0
scoreboard players set .frozen stats 0
scoreboard players set .kurons stats 0
gamemode adventure @a
gamerule sendCommandFeedback false
gamerule reducedDebugInfo true
tag @a remove drowned