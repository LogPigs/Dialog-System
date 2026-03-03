summon item ~ ~ ~ {Item:{id:"apple",components: {custom_data:{dialog.voided:true}}},Tags:["temp_item"]}

data modify entity @n[type=item,tag=temp_item] Item set from storage dialog:temp input
data modify entity @n[type=item,tag=temp_item] Owner set from entity @s UUID

tag @n[type=item,tag=temp_item] remove temp_item