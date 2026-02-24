execute if data storage dialog:temp temp_input{} run return run function dialog:util/parce/parcecompond
execute if data storage dialog:temp temp_input[] run return run function dialog:util/parce/parcelist

function dialog:util/parce/parcestring
data modify storage dialog:temp output.rich append from storage dialog:temp temp_output.raw[]
