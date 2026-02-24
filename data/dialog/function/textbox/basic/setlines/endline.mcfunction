scoreboard players add .line dialog.var 1
execute if score .line dialog.var matches 1 run function dialog:textbox/basic/setlines/lineone
execute if score .line dialog.var matches 2 run function dialog:textbox/basic/setlines/linetwo
execute if score .line dialog.var matches 3 run function dialog:textbox/basic/setlines/linethree
execute if score .line dialog.var matches 4 run function dialog:textbox/basic/setlines/linefour