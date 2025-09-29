advancement revoke @s only core:interaction_right
execute as @e[type=interaction,distance=..50] if data entity @s interaction at @s run function core:interaction/select_right