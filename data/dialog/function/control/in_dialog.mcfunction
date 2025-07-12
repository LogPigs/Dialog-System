tag @s add temp
#add tag to per player data storage
execute as @e[tag=dialog_storage,type=marker] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run tag @s add temp_dialog

#makes sure the player is inside the interation
execute as @e[tag=dialog_storage,type=marker,tag=temp_dialog] at @s if entity @n[tag=temp,distance=0.1..] run tp @n[tag=temp] ~ ~ ~


#displays the correct dialog

execute as @n[tag=temp_dialog] run data modify entity @s data.dialog_type set from entity @s data.dialog.dialog_type
function dialog:util/select_dialog_type with entity @n[tag=temp_dialog] data





tag @s remove temp
tag @e remove temp_dialog