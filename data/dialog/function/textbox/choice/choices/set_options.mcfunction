


data remove storage dialog:temp temp_scrollLine1
data remove storage dialog:temp temp_scrollLine2
data remove storage dialog:temp temp_scrollLine3
data remove storage dialog:temp temp_scrollLine4
data remove storage dialog:temp input
data remove storage dialog:temp output







execute store result storage dialog:temp dialog.scroll.1 int 1 run scoreboard players get @s dialog.scroll

scoreboard players operation .temp dialog.var = @s dialog.scroll
scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.2 int 1 run scoreboard players get .temp dialog.var

scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.3 int 1 run scoreboard players get .temp dialog.var

scoreboard players add .temp dialog.var 1
execute store result storage dialog:temp dialog.scroll.4 int 1 run scoreboard players get .temp dialog.var

function dialog:textbox/choice/choices/get_options with storage dialog:temp dialog.scroll


#Option 1
data modify storage dialog:temp input set from storage dialog:temp temp_scrollLine1
function dialog:util/parce/parce_full

data modify storage dialog:temp lines.scrollLine1 set from storage dialog:temp output
data modify storage dialog:temp input set from storage dialog:temp output

execute store result score .int dialog.var run data get storage dialog:temp input.raw

function dialog:textbox/choice/choices/get_width

scoreboard players set .temp dialog.var 58
function dialog:util/setspace

data modify storage dialog:temp lines.scrollLine1.spacer set from storage dialog:temp spacer

#Option 2
data modify storage dialog:temp input set from storage dialog:temp temp_scrollLine2
function dialog:util/parce/parce_full

data modify storage dialog:temp lines.scrollLine2 set from storage dialog:temp output
data modify storage dialog:temp input set from storage dialog:temp output

execute store result score .int dialog.var run data get storage dialog:temp input.raw

function dialog:textbox/choice/choices/get_width

scoreboard players set .temp dialog.var 58
function dialog:util/setspace

data modify storage dialog:temp lines.scrollLine2.spacer set from storage dialog:temp spacer


#Option 3
data modify storage dialog:temp input set from storage dialog:temp temp_scrollLine3
function dialog:util/parce/parce_full

data modify storage dialog:temp lines.scrollLine3 set from storage dialog:temp output
data modify storage dialog:temp input set from storage dialog:temp output

execute store result score .int dialog.var run data get storage dialog:temp input.raw

function dialog:textbox/choice/choices/get_width

scoreboard players set .temp dialog.var 58
function dialog:util/setspace

data modify storage dialog:temp lines.scrollLine3.spacer set from storage dialog:temp spacer


#Option 4
data modify storage dialog:temp input set from storage dialog:temp temp_scrollLine4
function dialog:util/parce/parce_full

data modify storage dialog:temp lines.scrollLine4 set from storage dialog:temp output
data modify storage dialog:temp input set from storage dialog:temp output

execute store result score .int dialog.var run data get storage dialog:temp input.raw

function dialog:textbox/choice/choices/get_width

scoreboard players set .temp dialog.var 58
function dialog:util/setspace

data modify storage dialog:temp lines.scrollLine4.spacer set from storage dialog:temp spacer






