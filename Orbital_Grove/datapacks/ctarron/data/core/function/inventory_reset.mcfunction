execute at @s positioned ~ ~1.32 ~ run kill @n[type=item,distance=..1,predicate=core:is_item_inv_locked]
clear @s #core:inv_locked
execute as @s[tag=pickaxe] run item replace entity @s hotbar.0 with minecraft:iron_pickaxe[can_break=[{blocks:"spawner"}],item_name={"fallback":"Emergency tool","translate":"ctarron.lobby.pickaxe"},unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

advancement revoke @s from core:inventory