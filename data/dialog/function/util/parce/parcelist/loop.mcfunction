data modify storage dialog:temp temp_input set from storage dialog:temp temp_list[0]

function dialog:util/parce/test

data remove storage dialog:temp temp_list[0]


scoreboard players remove .int dialog.var 1
execute unless score .int dialog.var matches ..0 run function dialog:util/parce/parcelist/loop