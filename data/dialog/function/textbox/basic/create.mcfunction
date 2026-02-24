
data modify storage dialog:temp input set from storage dialog:temp longString
function dialog:util/parce/parce_full



#get total length of Long string for line spliting
execute store result score @s dialog.totallength run data get storage dialog:temp output.raw




execute if score @s dialog.typewritelength > @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.totallength
execute if score @s dialog.typewritelength matches ..0 run scoreboard players set @s dialog.typewritelength 1

#cuts string off at "typewriterLength"
data modify storage dialog:temp temp_shortText.raw set from storage dialog:temp output.raw
data modify storage dialog:temp temp_shortText.rich set from storage dialog:temp output.rich


data remove storage dialog:temp shortText
scoreboard players operation .int dialog.var = @s dialog.typewritelength
function dialog:textbox/basic/setshort




#removes one from .shortlength then puts it in storage for line spiltting macros
#FIXED(i dont know how) need to remove one because otherwise the last line ends with a quotation mark
#scoreboard players operation .temp dialog.var = .shortlength dialog.var
#execute store result storage dialog:temp shortLength int 1 run scoreboard players get .temp dialog.var



data remove storage dialog:temp lines
data modify storage dialog:temp lines.line1_space set value []
data modify storage dialog:temp lines.line2_space set value []
data modify storage dialog:temp lines.line3_space set value []
data modify storage dialog:temp lines.line4_space set value []
data modify storage dialog:temp lines.line1 set value []
data modify storage dialog:temp lines.line2 set value []
data modify storage dialog:temp lines.line3 set value []
data modify storage dialog:temp lines.line4 set value []



data modify storage dialog:temp temp_lineText.raw set from storage dialog:temp shortText.raw
data modify storage dialog:temp temp_lineText.rich set from storage dialog:temp shortText.rich

data remove storage dialog:temp temp_lines

scoreboard players operation .int dialog.var = @s dialog.typewritelength

scoreboard players set .width dialog.var 0
scoreboard players set .line dialog.var 0
scoreboard players set .bool.1 dialog.var 0
data remove storage dialog:temp lineText
function dialog:textbox/basic/setlines


execute store result storage dialog:temp lines.board int 1 run scoreboard players get @s dialog.board
function dialog:textbox/basic/render