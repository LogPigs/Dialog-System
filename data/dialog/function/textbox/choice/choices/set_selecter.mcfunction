data modify storage dialog:temp lines.selected1 set value "^"
data modify storage dialog:temp lines.selected2 set value "^"
data modify storage dialog:temp lines.selected3 set value "^"
data modify storage dialog:temp lines.selected4 set value "^"
data modify storage dialog:temp lines.pointerup set value ""
data modify storage dialog:temp lines.pointerdown set value ""


scoreboard players operation .temp dialog.var = @s dialog.selected
scoreboard players operation .temp dialog.var -= @s dialog.scroll

execute if score .temp dialog.var matches 0 run data modify storage dialog:temp lines.selected1 set value "\\u201e➡\\u299e"
execute if score .temp dialog.var matches 1 run data modify storage dialog:temp lines.selected2 set value "\\u201e➡\\u299e"
execute if score .temp dialog.var matches 2 run data modify storage dialog:temp lines.selected3 set value "\\u201e➡\\u299e"
execute if score .temp dialog.var matches 3 run data modify storage dialog:temp lines.selected4 set value "\\u201e➡\\u299e"


execute if score @s dialog.scroll matches 2.. run data modify storage dialog:temp lines.pointerup set value "~\\u201e⬆\\u299e\\u299e"


scoreboard players operation .temp dialog.var = @s dialog.scroll
scoreboard players add .temp dialog.var 3
execute if score .temp dialog.var < .scrollOptions dialog.var run data modify storage dialog:temp lines.pointerdown set value "~\\u201e⬇\\u299e\\u299e"