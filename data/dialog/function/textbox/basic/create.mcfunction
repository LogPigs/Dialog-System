data modify storage dialog:temp input set from storage dialog:temp longString
function dialog:util/parce/parce_full

data modify storage dialog:temp char set from storage dialog:temp output[-1]
execute if data storage dialog:temp chara.sound unless data storage dialog:temp {temp:" "} if score @s dialog.typewritelength < @s dialog.totallength run function dialog:util/get_sound



#get total length of Long string for line spliting
execute store result score @s dialog.totallength run data get storage dialog:temp output.raw




execute if score @s dialog.typewritelength > @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.totallength
execute if score @s dialog.typewritelength matches ..0 run scoreboard players set @s dialog.typewritelength 1

#cuts string off at "typewriterLength"
data modify storage dialog:temp temp_shortText.raw set from storage dialog:temp output.raw
data modify storage dialog:temp temp_shortText.rich set from storage dialog:temp output.rich


#Shortens text to length
data remove storage dialog:temp shortText
scoreboard players operation .int dialog.var = @s dialog.typewritelength
function dialog:textbox/basic/setshort




data remove storage dialog:temp lines
#data modify storage dialog:temp lines.line1_space set value []
#data modify storage dialog:temp lines.line2_space set value []
#data modify storage dialog:temp lines.line3_space set value []
#data modify storage dialog:temp lines.line4_space set value []
#data modify storage dialog:temp lines.line1 set value []
#data modify storage dialog:temp lines.line2 set value []
#data modify storage dialog:temp lines.line3 set value []
#data modify storage dialog:temp lines.line4 set value []



data modify storage dialog:temp temp_lineText.raw set from storage dialog:temp shortText.raw
data modify storage dialog:temp temp_lineText.rich set from storage dialog:temp shortText.rich

data remove storage dialog:temp temp_lines

scoreboard players operation .int dialog.var = @s dialog.typewritelength

scoreboard players set .width dialog.var 0
scoreboard players set .line dialog.var 0
scoreboard players set .bool.1 dialog.var 0
data remove storage dialog:temp lineText
function dialog:textbox/basic/setlines




#get if has name
data modify storage dialog:temp lines.name set value ""
execute if data storage dialog:temp chara.name run function dialog:util/getname


execute store result storage dialog:temp lines.board int 1 run scoreboard players get @s dialog.board
function dialog:textbox/basic/render