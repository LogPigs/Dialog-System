#removes important tags
tag @s remove in_dialog
tag @s remove dialog.typewritetimer
tag @s remove skip_dialog

#resets scores to zero
scoreboard players set @s dialog.typewritetimer 0
scoreboard players set @s dialog.typewritelength 0
scoreboard players set @s dialog.scroll 1
scoreboard players set @s dialog.selected 1

#unfreezes player
attribute @s minecraft:movement_speed modifier remove dialog:freeze
attribute @s minecraft:jump_strength modifier remove dialog:freeze
attribute @s minecraft:gravity modifier remove dialog:freeze



tag @s add temp

#removes linked entitys
execute as @e[tag=!temp] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run kill @s

tag @s remove temp

#clears actionbar
title @s actionbar ""