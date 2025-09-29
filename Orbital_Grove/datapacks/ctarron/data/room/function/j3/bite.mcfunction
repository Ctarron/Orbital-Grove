tp @s ~ ~ ~ ~ ~
function animated_java:planta/animations/animation.model.bite/play

summon block_display 40.98 38.12 -129.14 {Rotation:[-124.0F,37.0F],Tags:["camera","dynamic"]}
function core:camera/start
attribute @p[distance=..5] minecraft:movement_speed base set 0
attribute @p[distance=..5] minecraft:jump_strength base set 0
rotate @p facing entity @s
playsound ctarron:plant.bite hostile @a ~ ~ ~ 1 1

schedule function room:j3/bite_to_checkpoint 20t
schedule function room:j3/tick 40t replace