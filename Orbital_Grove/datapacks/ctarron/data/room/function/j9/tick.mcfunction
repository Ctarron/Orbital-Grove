execute positioned -58.0 35.0 -164.0 as @a[dx=3,dy=1,dz=1] run return run function room:load {room:j10}
execute positioned -59.0 35.0 -199.0 as @a[tag=!hard_mode,dx=0,dy=0,dz=0] run function robot:dialogue/hard/1

schedule function room:j9/tick 2t