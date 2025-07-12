scoreboard players set .bool dialog.var 0
execute on target store result score .bool dialog.var if entity @s[tag=this]

execute if score .bool dialog.var matches 1 at @s run tag @s add temp_interaction

execute if score .bool dialog.var matches 1 run data remove entity @s interaction