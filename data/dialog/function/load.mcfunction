
scoreboard objectives add Dialog_ID dummy


scoreboard objectives setdisplay list Dialog_ID 



scoreboard objectives add dialog.var dummy
scoreboard objectives add dialog.totallength dummy
scoreboard objectives add dialog.typewritelength dummy
scoreboard objectives add dialog.typewritetimer dummy

scoreboard objectives add dialog.selectedItemSlot dummy
scoreboard objectives add dialog.prevSelectedItemSlot dummy
scoreboard objectives add dialog.scroll dummy
scoreboard objectives add dialog.selected dummy

scoreboard objectives add dialog.input.hold dummy


scoreboard objectives add dialog.board dummy

tellraw @a ["Reloaded Dialog!"]