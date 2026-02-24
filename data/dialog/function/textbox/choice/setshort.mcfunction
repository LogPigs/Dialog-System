

data modify storage dialog:temp shortText.raw append from storage dialog:temp temp_shortText.raw[0]
data modify storage dialog:temp shortText.rich append from storage dialog:temp temp_shortText.rich[0]

data remove storage dialog:temp temp_shortText.raw[0]
data remove storage dialog:temp temp_shortText.rich[0]

scoreboard players remove .int dialog.var 1
execute unless score .int dialog.var matches ..0 run function dialog:textbox/choice/setshort