tag @s add temp

#edits marker storage
execute as @e[tag=!temp,tag=dialog_storage] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run tag @s add temp_dialog

$execute if score $(entity) $(score) matches $(number) run function dialog:control/next_dialog with entity @n[tag=temp_dialog] data.dialog.true


$execute unless score $(entity) $(score) matches $(number) run function dialog:control/next_dialog with entity @n[tag=temp_dialog] data.dialog.false

tag @e remove temp_dialog
tag @s remove temp


