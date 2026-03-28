tag @s add temp


#edits marker storage
execute as @e[tag=!temp,tag=dialog_storage] if score @s Dialog_ID = @n[tag=temp] Dialog_ID run tag @s add temp_dialog


data remove storage dialog:temp input
data modify storage dialog:temp input set from storage dialog:temp option.data



$scoreboard players operation .int dialog.var = @s $(scoreboard)
execute store result score .int.1 dialog.var run data get storage dialog:temp input.price

execute unless score .int dialog.var >= .int.1 dialog.var run return run function dialog:player/purchase_deny

$scoreboard players operation @s $(scoreboard) -= int.1 dialog.var

data modify storage dialog:temp input set from storage dialog:temp input.item
function dialog:player/summon_item


tag @e remove temp_dialog
tag @s remove temp
