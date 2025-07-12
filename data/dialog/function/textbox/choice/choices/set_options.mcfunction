


data modify storage dialog:temp lines.scrollLine1 set value ""
data modify storage dialog:temp lines.scrollLine2 set value ""
data modify storage dialog:temp lines.scrollLine3 set value ""
data modify storage dialog:temp lines.scrollLine4 set value ""









execute store result storage dialog:temp dialog.scroll.1 int 1 run scoreboard players get @s dialog.scroll

scoreboard players operation .temp dialog.var = @s dialog.scroll
scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.2 int 1 run scoreboard players get .temp dialog.var

scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.3 int 1 run scoreboard players get .temp dialog.var

scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.4 int 1 run scoreboard players get .temp dialog.var


function dialog:textbox/choice/choices/get_options with storage dialog:temp dialog.scroll





function dialog:util/add_line_spaces {"input":"dialog:temp lines.scrollLine1","amount":"13"}
function dialog:util/add_line_spaces {"input":"dialog:temp lines.scrollLine2","amount":"13"}
function dialog:util/add_line_spaces {"input":"dialog:temp lines.scrollLine3","amount":"13"}
function dialog:util/add_line_spaces {"input":"dialog:temp lines.scrollLine4","amount":"13"}



