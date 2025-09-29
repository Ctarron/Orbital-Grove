advancement revoke @s only core:interaction_left

execute at @s as @e[type=interaction,distance=..30] if data entity @s attack run function core:interaction/select_left
