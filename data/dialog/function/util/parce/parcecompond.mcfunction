
data modify storage dialog:temp temp_rich set from storage dialog:temp temp_input
data modify storage dialog:temp temp_input set from storage dialog:temp temp_input.text


data remove storage dialog:temp temp_output

function dialog:util/parce/parcestring

data modify storage dialog:temp temp_list_2 set from storage dialog:temp temp_output.raw

execute store result score .int.1 dialog.var run data get storage dialog:temp temp_list_2

function dialog:util/parce/parcecompond/loop

data modify storage dialog:temp output.rich append from storage dialog:temp temp_output.rich[]
