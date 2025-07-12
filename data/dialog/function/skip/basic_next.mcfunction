execute if entity @s[tag=skip_dialog] if score @s dialog.typewritelength = @s dialog.totallength run function dialog:util/get_next

#probally a better way than this
execute if entity @s[tag=skip_dialog] if score @s dialog.typewritelength < @s dialog.totallength run scoreboard players add @s dialog.typewritetimer 300


execute if entity @s[tag=skip_dialog] run tag @s remove skip_dialog