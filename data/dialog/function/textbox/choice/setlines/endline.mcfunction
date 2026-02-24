scoreboard players add .line dialog.var 1
execute if score .line dialog.var matches 1 run function dialog:textbox/choice/setlines/lineone
execute if score .line dialog.var matches 2 run function dialog:textbox/choice/setlines/linetwo
execute if score .line dialog.var matches 3 run function dialog:textbox/choice/setlines/linethree
execute if score .line dialog.var matches 4 run function dialog:textbox/choice/setlines/linefour