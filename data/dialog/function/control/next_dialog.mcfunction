#so it doent skip next dialog
tag @s remove skip_dialog

#makes sure you can't change dialog while not in one
execute unless entity @s[tag=in_dialog] run return fail



#resets scores to zero
scoreboard players set @s dialog.typewritetimer 0
scoreboard players set @s dialog.typewritelength 0
scoreboard players set @s dialog.scroll 0
scoreboard players set @s dialog.selected 0


tag @s add temp

#edits marker storage
$execute as @e[tag=!temp,tag=dialog_storage] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run data modify entity @s data.dialog set from storage dialog:characters $(name)[{id:"$(id)"}]

tag @s remove temp