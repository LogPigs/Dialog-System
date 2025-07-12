tag @s add temp

#edits marker storage
execute as @e[tag=!temp,tag=dialog_storage] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run tag @s add temp_dialog

function dialog:control/next_dialog with entity @n[tag=temp_dialog] data.dialog.next

tag @e remove temp_dialog
tag @s remove temp