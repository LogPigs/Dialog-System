execute if score @s dialog.typewritelength <= @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.typewritetimer




data modify storage dialog:temp longString set string entity @n[tag=temp_dialog] data.dialog.dialog
function dialog:textbox/basic/create

#has to be below dialog:textbox/basic/create
function dialog:skip/basic_next




