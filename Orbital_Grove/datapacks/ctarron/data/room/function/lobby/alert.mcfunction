execute positioned 16.5 -44.4 69.5 run function room:lobby/alarm_summon
execute positioned 19.5 -37.4 69.5 run function room:lobby/alarm_summon
execute positioned 7.5 -37.4 63.5 run function room:lobby/alarm_summon
playsound ctarron:lobby.alarm block @a 16.5 -44.4 69.5 8
schedule function robot:dialogue/crash/1 2s
schedule function room:lobby/ladder_check 2t

function core:time/start