execute unless block ~ ~0.25 ~ #core:returns_to_checkpoint run return run advancement revoke @s only core:drown
title @a times 5 20 5
execute as @a run function player:to_black
execute as @a[tag=!drowned] run say glu glu glu
schedule function core:to_checkpoint 10t
tag @a add drowned