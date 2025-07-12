#makes sure all lines are empty
data modify storage dialog:temp lines.line1 set value "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line2 set value "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line3 set value "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line4 set value "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"


execute if score .shortlength dialog.var matches 1..32 run return run function dialog:textbox/basic/setlines/lineone with storage dialog:temp
execute if score .shortlength dialog.var matches 33..64 run return run function dialog:textbox/basic/setlines/linetwo with storage dialog:temp
execute if score .shortlength dialog.var matches 65..95 run return run function dialog:textbox/basic/setlines/linethree with storage dialog:temp
execute if score .shortlength dialog.var matches 96..129 run return run function dialog:textbox/basic/setlines/linefour with storage dialog:temp