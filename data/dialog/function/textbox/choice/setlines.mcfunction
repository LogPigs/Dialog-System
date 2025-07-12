#makes sure all lines are empty
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
data modify storage dialog:temp lines.line1 set value "^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line2 set value "^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line3 set value "^^^^^^^^^^^^^^^^^^"
data modify storage dialog:temp lines.line4 set value "^^^^^^^^^^^^^^^^^^"


execute if score .shortlength dialog.var matches 1..18 run return run function dialog:textbox/choice/setlines/lineone with storage dialog:temp
execute if score .shortlength dialog.var matches 19..36 run return run function dialog:textbox/choice/setlines/linetwo with storage dialog:temp
execute if score .shortlength dialog.var matches 37..54 run return run function dialog:textbox/choice/setlines/linethree with storage dialog:temp
execute if score .shortlength dialog.var matches 55..72 run return run function dialog:textbox/choice/setlines/linefour with storage dialog:temp