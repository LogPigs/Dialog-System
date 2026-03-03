

execute store result storage dialog:temp option.int int 1 run scoreboard players get @s dialog.selected
data modify storage dialog:temp option.scoreboard set from entity @n[tag=temp_dialog] data.dialog.score


execute if entity @s[tag=skip_dialog] if score @s dialog.typewritelength = @s dialog.totallength if data storage dialog:temp option.data.next run function dialog:util/get_choice with storage dialog:temp option

execute if entity @s[tag=skip_dialog] if score @s dialog.typewritelength = @s dialog.totallength if data storage dialog:temp option.data.item run function dialog:player/get_buy with storage dialog:temp option

#probally a better way than this
execute if entity @s[tag=skip_dialog] if score @s dialog.typewritelength < @s dialog.totallength run scoreboard players add @s dialog.typewritetimer 300


execute if entity @s[tag=skip_dialog] run tag @s remove skip_dialog