advancement revoke @s only core:shift_not
execute as @s[tag=!camera] run return fail
function core:camera/spectate
#execute as @s[tag=!warned] run function core:camera/warn
tp @p @n[type=block_display,tag=camera,limit=1]