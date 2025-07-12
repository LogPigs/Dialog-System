
#exits dialog if they left inside one
execute if entity @s[tag=in_dialog] run function dialog:control/exit_dialog



#adds an Dialog_ID to link player to interation and marker
execute if score @s Dialog_ID matches 0.. run return fail
scoreboard players operation @s Dialog_ID = .max Dialog_ID
scoreboard players add .max Dialog_ID 1

