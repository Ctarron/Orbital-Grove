execute as @s[tag=robot] at @s run playsound entity.allay.ambient_without_item voice @a ~ ~ ~ 10
execute as @s[tag=plant_v] run function room:j11/open
execute as @s[tag=info] on target run dialog show @s core:info

data remove entity @s interaction
