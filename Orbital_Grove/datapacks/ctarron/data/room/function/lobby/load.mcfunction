summon minecraft:item_display 20.5 -46.5 97.25 {Tags:[dynamic,skb],item: {components: {"minecraft:custom_model_data": {floats: [1.0f]}, "minecraft:item_model": "ctarron:skb"}, count: 1, id: "minecraft:ice"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [15.0f, 15.0f, -15.0f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display 20.5 -46.5076 95.0625 {Tags:[dynamic,blinds],teleport_duration:5,item: {components: {"minecraft:item_model": "ctarron:blinds"}, count: 1, id: "minecraft:pale_oak_planks"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 3.0f, 2.0f], translation: [0.0f, 0.0f, 1.0f]}}

execute positioned 17 -44 66 run function room:lobby/camera_summon
execute positioned 15 -42 46 run function room:lobby/camera_summon
summon minecraft:item_display 15.125 -47.25 69.5 {Tags:[dynamic],billboard:"fixed",item: {components: {"minecraft:item_model": "ctarron:trajectory"}, count: 1, id: "minecraft:ice"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.f, 1.f, 1.f], translation: [0.0f, 0.0f, 0.0f]}}

setblock 28 -40 71 minecraft:gray_stained_glass
setblock 7 -40 53 minecraft:air

execute as @a run function player:scale/reset
kill @e[type=allay]


summon text_display 15.0625 -46.5 69.5 {Tags:["dynamic"],text:{"color":"black","fallback":"You should install the resource pack","translate":"ctarron.lobby.approaching"},background:0, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75, 0.75, 0.75], translation: [0.0f, 0.0f, 0.0f]}}

summon mannequin 16.5 -47 53.5 {Tags:[dynamic], CustomNameVisible:0b,profile:"Ctarron", immovable:true,hide_description:true,Rotation:[-90F,0F],DeathTime:19}

schedule function room:lobby/blinds/check 2t

execute as @a[tag=!cleared] at @s run return run summon minecraft:text_display 25.9375 -47.625 53.5 {Tags:["dynamic"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{"color":"black","obfuscated":true,"translate":"ctarron.lobby.previous"},{"obfuscated":true,"score":{"name":".hours","objective":"stats"}},{"obfuscated":false,"text":" : "},{"obfuscated":true,"score":{"name":".mins","objective":"stats"}},{"obfuscated":false,"text":" : "},{"obfuscated":true,"score":{"name":".secs","objective":"stats"}}], transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.8125002f, 1.8125f, 1.8125002f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display 25.9375 -47.625 53.5 {Tags:["dynamic"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{"color":"black","translate":"ctarron.lobby.previous"},{"score":{"name":".hours","objective":"stats"}}," : ",{"score":{"name":".mins","objective":"stats"}}," : ",{"score":{"name":".secs","objective":"stats"}}], transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.8125002f, 1.8125f, 1.8125002f], translation: [0.0f, 0.0f, 0.0f]}}
