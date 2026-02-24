execute unless data storage dialog:temp input.raw[0] run return run return fail
data modify storage dialog:temp char set from storage dialog:temp input.raw[0]


function dialog:util/get_char_width
scoreboard players operation .width dialog.var += .char dialog.var

data remove storage dialog:temp input.raw[0]
data remove storage dialog:temp input.rich[0]

scoreboard players remove .int dialog.var 1
execute unless score .int dialog.var matches ..0 run function dialog:textbox/choice/choices/get_width