execute positioned 28.5 -41.00 69.5 unless entity @a[distance=..3] run return run schedule function room:lobby/ladder_check 2t

setblock 28 -40 71 minecraft:air destroy
summon item 28 -40 71 {Motion:[0.0,0.0,-0.5],Tags:["dynamic"],CustomNameVisible:1b,CustomName:{"fallback":"Emergency tool","translate":"ctarron.lobby.pickaxe"},Item:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:can_break":[{blocks:"spawner"}],"minecraft:item_name":{"fallback":"Emergency tool","translate":"ctarron.lobby.pickaxe"},"minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["attribute_modifiers","unbreakable"]}}}}
tag @a add pickaxe
setblock 7 -40 53 spawner{SpawnData:{entity:{id:endermite,PersistenceRequired:1b,Health:1f,Tags:["dynamic"]}},SpawnRange:2,MaxNearbyEntities:4,Delay:10,RequiredPlayerRange:16} replace
function robot:dialogue/crash/3
schedule clear robot:dialogue/crash/hurry
schedule function room:lobby/crash/check 2t