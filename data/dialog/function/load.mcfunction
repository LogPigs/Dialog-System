
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



tellraw @a ["Reloaded Dialog! ",{"clickEvent":{"action":"open_url","value":"https://modrinth.com/resourcepack/mono7"},"color":"#45F9FF","hoverEvent":{"action":"show_text","value":[{"text":"https://modrinth.com/resourcepack/mono7","italic":true}]},"italic":true,"text":"[monospace font by xllifi]"}]