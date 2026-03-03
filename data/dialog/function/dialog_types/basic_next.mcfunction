execute if score @s dialog.typewritelength <= @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.typewritetimer



data modify storage dialog:temp longString set from entity @n[tag=temp_dialog] data.dialog.dialog
data remove storage dialog:temp chara
data modify storage dialog:temp chara set from entity @n[tag=temp_dialog] data.chara
function dialog:textbox/basic/create

#has to be below dialog:textbox/basic/create
function dialog:skip/basic_next




