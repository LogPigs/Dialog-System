scoreboard players set @s dialog.typewritetimer 0
scoreboard players set @s dialog.typewritelength 0

$data modify storage dialog:temp option.data set from entity @n[tag=temp_dialog] data.dialog.options.$(int)
