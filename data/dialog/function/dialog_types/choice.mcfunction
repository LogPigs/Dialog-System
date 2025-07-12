execute if score @s dialog.typewritelength <= @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.typewritetimer




data modify storage dialog:temp longString set string entity @n[tag=temp_dialog] data.dialog.dialog
data modify storage dialog:temp options set from entity @n[tag=temp_dialog] data.dialog.options
function dialog:textbox/choice/create

#has to be below dialog:textbox/choice/create
function dialog:skip/choice




