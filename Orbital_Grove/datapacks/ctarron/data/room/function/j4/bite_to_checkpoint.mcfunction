execute as @a run function room:j4/to_checkpoint
title @a times 0 10 5
execute as @a run function player:to_black
execute as @a[tag=!eaten] run function robot:dialogue/plants/eaten
schedule function core:camera/end 10t