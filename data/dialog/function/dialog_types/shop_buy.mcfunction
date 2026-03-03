execute if score @s dialog.typewritelength <= @s dialog.totallength run scoreboard players operation @s dialog.typewritelength = @s dialog.typewritetimer




scoreboard players add @s dialog.last_selected 0
execute store result storage dialog:temp option.int int 1 run scoreboard players get @s dialog.selected
execute unless score @s dialog.selected = @s dialog.last_selected run function dialog:player/get_selected_option with storage dialog:temp option
scoreboard players operation @s dialog.last_selected = @s dialog.selected



data modify storage dialog:temp longString set from storage dialog:temp desc


data modify storage dialog:temp options set from entity @n[tag=temp_dialog] data.dialog.options
data remove storage dialog:temp chara
data modify storage dialog:temp chara set from entity @n[tag=temp_dialog] data.chara

function dialog:textbox/choice/create



#has to be below dialog:textbox/choice/create
function dialog:skip/shop_buy




