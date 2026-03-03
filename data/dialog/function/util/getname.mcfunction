data get storage dialog:temp chara.name

#Set Name Spacing
data modify storage dialog:temp input set from storage dialog:temp chara.name
function dialog:util/parce/parce_full

data modify storage dialog:temp name.text set from storage dialog:temp output
data modify storage dialog:temp input set from storage dialog:temp output

execute store result score .int dialog.var run data get storage dialog:temp input.raw
function dialog:util/get_width

scoreboard players set .temp dialog.var 54
function dialog:util/setspace

data modify storage dialog:temp name.spacer set from storage dialog:temp spacer



data modify storage dialog:temp lines.name set value [\
{"shadow_color":0,score:{name:"@s",objective:"dialog.board"},font:"dialog:name_board"}\
,{text:"e",font:"dialog:spacer"},\
{"shadow_color":0,"font":"dialog:name_line",nbt:"name.text.rich",storage:"dialog:temp",interpret:1b},{"font":"dialog:spacer",nbt:"name.spacer",storage:"dialog:temp",interpret:1b}\
,{text:"f",font:"dialog:spacer"}]

