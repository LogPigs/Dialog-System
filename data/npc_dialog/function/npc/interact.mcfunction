advancement revoke @s only npc_dialog:npc_intraction


tag @s add this
execute as @e[type=interaction,distance=..6] run function npc_dialog:npc/find_interacted

execute as @n[tag=temp_interaction] on vehicle run tag @s add temp_npc

function dialog:control/enter_dialog with entity @n[tag=temp_npc] item.components."minecraft:custom_data".dialog


tag @n[tag=temp_interaction,type=interaction] remove temp_interaction
tag @n[tag=temp_npc,type=item_display] remove temp_interaction
tag @s remove this