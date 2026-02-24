execute unless data storage dialog:temp temp_lineText.raw[0] run return run function dialog:textbox/basic/setlines/endline
data modify storage dialog:temp char set from storage dialog:temp temp_lineText.raw[0]


#tellraw @s {nbt:"char", storage:"dialog:temp"}

execute if data storage dialog:temp {char:"\n"} run data remove storage dialog:temp temp_lineText.raw[0]
execute if data storage dialog:temp {char:"\n"} run data remove storage dialog:temp temp_lineText.rich[0]


execute if data storage dialog:temp {char:"\n"} run return run function dialog:textbox/basic/setlines/endline



#tellraw @s {nbt:"char", storage:"dialog:temp"}


function dialog:util/get_char_width
scoreboard players operation .width dialog.var += .char dialog.var
execute if score .width dialog.var matches 192.. run return run function dialog:textbox/basic/setlines/width_endline



data modify storage dialog:temp lineText.raw append from storage dialog:temp temp_lineText.raw[0]
data modify storage dialog:temp lineText.rich append from storage dialog:temp temp_lineText.rich[0]



data remove storage dialog:temp temp_lineText.raw[0]
data remove storage dialog:temp temp_lineText.rich[0]

scoreboard players remove .int dialog.var 1
execute unless score .int dialog.var matches ..-1 run return run function dialog:textbox/basic/setlines


#execute if score .bool.1 dialog.var matches 0 run tellraw @s {nbt:"lineText.raw",storage:"dialog:temp"}
#execute if score .bool.1 dialog.var matches 0 run tellraw @s {"score":{"name":".line","objective":"dialog.var"}}
execute if score .bool.1 dialog.var matches 0 run function dialog:textbox/basic/setlines/endline
scoreboard players set .bool.1 dialog.var 1