

#get total length of Long string for line spliting
execute store result score @s dialog.totallength run data get storage dialog:temp longString

execute if score @s dialog.typewritelength > @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.totallength
execute if score @s dialog.typewritelength matches ..0 run scoreboard players set @s dialog.typewritelength 1

#puts .dialog.typewritelength scoreboard in storage for macro
execute store result storage dialog:temp typewriterLength int 1 run scoreboard players get @s dialog.typewritelength
#cuts string off at "typewriterLength"
function dialog:textbox/basic/setshort with storage dialog:temp

#get total length of short string for line spliting
execute store result score .shortlength dialog.var run data get storage dialog:temp shortString



#removes one from .shortlength then puts it in storage for line spiltting macros
#FIXED(i dont know how) need to remove one because otherwise the last line ends with a quotation mark
scoreboard players operation .temp dialog.var = .shortlength dialog.var
execute store result storage dialog:temp shortLength int 1 run scoreboard players get .temp dialog.var

function dialog:textbox/basic/setlines


data modify storage dialog:temp lines.board set value "a"
function dialog:textbox/basic/render with storage dialog:temp lines