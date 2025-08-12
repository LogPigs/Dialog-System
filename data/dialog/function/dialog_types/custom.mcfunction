tag @s add custom_temp

#gets marker storage
execute as @e[tag=!custom_temp,tag=dialog_storage] if score @s Dialog_ID = @n[tag=custom_temp] Dialog_ID run tag @s add custom_temp_dialog

$function $(type) with entity @n[tag=temp_dialog] data.dialog

tag @e remove custom_temp_dialog
tag @s remove custom_temp
