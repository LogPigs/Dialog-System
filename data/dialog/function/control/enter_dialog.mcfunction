#makes sure you can't open a dialog while in dialog
execute if entity @s[tag=in_dialog] run return fail

execute store result score .temp dialog.var run data get entity @s Motion[1] 100000
execute unless score .temp dialog.var matches -7841 run return fail



#adds important tags
#not much to say
tag @s add in_dialog
tag @s add dialog.typewritetimer



#resets scores
#dialog.typewritetimer used to see how long player is in dialog
scoreboard players set @s dialog.typewritetimer 0
#dialog.typewritelength used to get the cut off on string
scoreboard players set @s dialog.typewritelength 0
#dialog.scroll used to get wich page of options player is on
scoreboard players set @s dialog.scroll 1
#dialog.selected used to get wich option player has dialog.selected
scoreboard players set @s dialog.selected 1
#dialog.selectedItemSlot used to move dialog.selected
execute store result score @s dialog.selectedItemSlot run data get entity @s SelectedItemSlot 1
#dialog.prevSelectedItemSlot used to detect change in dialog.selectedItemSlot
scoreboard players operation @s dialog.prevSelectedItemSlot = @s dialog.selectedItemSlot 



#summons interaction entity used to skip and end dialog
execute at @s anchored eyes run summon interaction ^ ^ ^ {Tags:["temp","dialog_interaction"], width:0.2, height:0.8}
#moves interaction entity down
execute as @n[tag=temp,tag=dialog_interaction] at @s run tp ~ ~-0.5 ~



#summons marker entity used to store what dialog player is in
execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["temp","dialog_storage"]}

#stores dialog in marker entity
$data modify entity @n[tag=temp,tag=dialog_storage] data.dialog set from storage dialog:characters $(name)[{id:"$(id)"}]

#set Dialog_IDs of marker and interaction entity
scoreboard players operation @n[tag=temp,tag=dialog_interaction] Dialog_ID = @s Dialog_ID
scoreboard players operation @n[tag=temp,tag=dialog_storage] Dialog_ID = @s Dialog_ID

#freezes player
attribute @s minecraft:movement_speed modifier add dialog:freeze -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add dialog:freeze -1 add_multiplied_total



tag @e remove temp