data remove storage dialog:temp spacer

#tellraw @s {"score":{"name":".width","objective":"dialog.var"}}

scoreboard players operation .width dialog.var >< .temp dialog.var
scoreboard players operation .width dialog.var -= .temp dialog.var



execute if score .width dialog.var matches 128.. run function dialog:util/setspace/128
execute if score .width dialog.var matches 64.. run function dialog:util/setspace/64
execute if score .width dialog.var matches 32.. run function dialog:util/setspace/32
execute if score .width dialog.var matches 16.. run function dialog:util/setspace/16
execute if score .width dialog.var matches 8.. run function dialog:util/setspace/8
execute if score .width dialog.var matches 4.. run function dialog:util/setspace/4
execute if score .width dialog.var matches 2.. run function dialog:util/setspace/2
execute if score .width dialog.var matches 1.. run function dialog:util/setspace/1