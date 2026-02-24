data modify storage dialog:temp lines.line1 set from storage dialog:temp lineText.rich


scoreboard players set .temp dialog.var 192
function dialog:util/setspace


data modify storage dialog:temp lines.line1_space set from storage dialog:temp spacer



scoreboard players set .width dialog.var 0
data remove storage dialog:temp lineText
function dialog:textbox/basic/setlines