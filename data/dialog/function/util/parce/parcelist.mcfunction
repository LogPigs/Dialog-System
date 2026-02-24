data modify storage dialog:temp temp_list set from storage dialog:temp temp_input

execute store result score .int dialog.var run data get storage dialog:temp temp_input

function dialog:util/parce/parcelist/loop

