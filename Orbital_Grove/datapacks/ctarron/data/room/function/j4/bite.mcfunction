tp @s ~ ~ ~ ~ ~
function animated_java:planta/animations/animation.model.bite/play

summon block_display 41.49 37.53 -210.21 {Rotation:[-145.0F,25.5F],Tags:["camera","dynamic"]}
function core:camera/start

attribute @p[distance=..5] minecraft:movement_speed base set 0
attribute @p[distance=..5] minecraft:jump_strength base set 0
rotate @p facing entity @s
playsound ctarron:plant.bite hostile @a ~ ~ ~ 1 1

schedule function room:j4/bite_to_checkpoint 20t
schedule function room:j4/tick 40t replace