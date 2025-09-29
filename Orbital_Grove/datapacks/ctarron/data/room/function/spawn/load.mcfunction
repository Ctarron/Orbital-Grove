execute positioned 15 -17 46 run function room:lobby/camera_summon
execute as @a run function player:scale/reset
scoreboard players set .frozen stats 0
kill @e[type=allay]

summon minecraft:item_display 16.5 -21.5 53.5 {Tags:[dynamic],item: {components: {"minecraft:item_model": "ctarron:ctarron"}, count: 1, id: "minecraft:lightning_rod"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.93749994f, 0.93750006f, 0.93749994f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display 16.5 -19.875 53.5 {Tags:[dynamic],alignment: "center", background: 1073741824, billboard: "vertical", default_background: 0b, line_width: 200, see_through: 1b, shadow: 0b, text: "Ctarron", view_range: 0.5f}

summon minecraft:text_display 25.9375 -22.5 53.5 {Tags:["dynamic"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "black", text: "Info\nℹ"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.8125002f, 1.8125f, 1.8125002f], translation: [0.0f, 0.0f, 0.0f]}}
summon interaction 26.4 -22.5 53.5 {Tags:["dynamic","info"]}
schedule function room:spawn/tick 2t
tag @a remove drowned