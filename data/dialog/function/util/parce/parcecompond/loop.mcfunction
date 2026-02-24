




data modify storage dialog:temp temp_rich.text set from storage dialog:temp temp_list_2[0]

data modify storage dialog:temp temp_output.rich append from storage dialog:temp temp_rich






data remove storage dialog:temp temp_list_2[0]


scoreboard players remove .int.1 dialog.var 1
execute unless score .int.1 dialog.var matches ..0 run function dialog:util/parce/parcecompond/loop