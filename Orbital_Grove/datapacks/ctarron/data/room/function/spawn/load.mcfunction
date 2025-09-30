execute positioned 15 -17 46 run function room:lobby/camera_summon
execute as @a run function player:scale/reset
scoreboard players set .frozen stats 0
kill @e[type=allay]

summon mannequin 16.5 -22 53.5 {Tags:[dynamic], CustomNameVisible:1b,profile:"Ctarron", immovable:true,hide_description:true,Rotation:[-90F,0F],CustomName:"Ctarron",DeathTime:19}

execute if entity @a[tag=cleared] run summon text_display 20.5 -22 47.5 {Tags:["dynamic"],text:{"color":"white","fallback":"Retry","translate":"ctarron.retry"},billboard:"center"}

summon minecraft:text_display 25.9375 -22.5 53.5 {Tags:["dynamic"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "black", text: "Info\nℹ"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.8125002f, 1.8125f, 1.8125002f], translation: [0.0f, 0.0f, 0.0f]}}
summon interaction 26.4 -22.5 53.5 {Tags:["dynamic","info"]}
schedule function room:spawn/tick 2t