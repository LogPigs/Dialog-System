

#get total length of Long string for line spliting
execute store result score @s dialog.totallength run data get storage dialog:temp longString

execute if score @s dialog.typewritelength > @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.totallength
execute if score @s dialog.typewritelength matches ..0 run scoreboard players set @s dialog.typewritelength 1

#puts .dialog.typewritelength scoreboard in storage for macro
execute store result storage dialog:temp typewriterLength int 1 run scoreboard players get @s dialog.typewritelength
#cuts string off at "typewriterLength"
function dialog:textbox/choice/setshort with storage dialog:temp

#get total length of short string for line spliting
execute store result score .shortlength dialog.var run data get storage dialog:temp shortString


#removes one from .shortlength then puts it in storage for line spiltting macros
scoreboard players operation .temp dialog.var = .shortlength dialog.var
execute store result storage dialog:temp shortLength int 1 run scoreboard players get .temp dialog.var

function dialog:textbox/choice/setlines

#moves dialog.selected based on dialog.selectedItemSlot
###BUG when player moves dialog.selectedItemSlot over end of hotbar
execute store result score @s dialog.selectedItemSlot run data get entity @s SelectedItemSlot 1

execute if score @s dialog.selectedItemSlot < @s dialog.prevSelectedItemSlot run scoreboard players remove @s dialog.selected 1
execute if score @s dialog.selectedItemSlot > @s dialog.prevSelectedItemSlot run scoreboard players add @s dialog.selected 1

scoreboard players operation @s dialog.prevSelectedItemSlot = @s dialog.selectedItemSlot

#moves dialog.selected based on W and S key press
execute if predicate dialog:scroll/any run scoreboard players add @s dialog.input.hold 1

scoreboard players operation .temp dialog.var = @s dialog.input.hold
scoreboard players set .temp.1 dialog.var 2
scoreboard players operation .temp dialog.var %= .temp.1 dialog.var

execute if predicate dialog:scroll/up if score .temp dialog.var matches 0 run scoreboard players remove @s dialog.selected 1
execute if predicate dialog:scroll/down if score .temp dialog.var matches 0 run scoreboard players add @s dialog.selected 1

execute unless predicate dialog:scroll/any run scoreboard players reset @s dialog.input.hold


#gets how many options there are
execute store result score .scrollOptions dialog.var run data get storage dialog:temp options

#clamps "dialog.selected" from 0 to .scrollOptions
execute if score @s dialog.selected matches ..0 run scoreboard players set @s dialog.selected 1
execute if score @s dialog.selected > .scrollOptions dialog.var run scoreboard players operation @s dialog.selected = .scrollOptions dialog.var

#moves page based of dialog.selected
execute if score @s dialog.scroll > @s dialog.selected run scoreboard players operation @s dialog.scroll = @s dialog.selected
scoreboard players operation .temp dialog.var = @s dialog.scroll
scoreboard players add .temp dialog.var 4
execute if score @s dialog.selected >= .temp dialog.var run scoreboard players add @s dialog.scroll 1




function dialog:textbox/choice/choices/set_options


function dialog:textbox/choice/choices/set_selecter





data modify storage dialog:temp lines.board set value "b"
function dialog:textbox/choice/render with storage dialog:temp lines