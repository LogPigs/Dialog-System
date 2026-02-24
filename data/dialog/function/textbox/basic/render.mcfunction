#$title @s actionbar [\
{"shadow_color":0,"font":"dialog:board","text":"%$(board)~"},\
{"font":"dialog:nameline","text":"~~~~name"},\
{"font":"dialog:lineone","text":"$(line1)"},\
{"font":"dialog:linetwo","text":"~~~~%%%%%%%$(line2)"},\
{"font":"dialog:linethree","text":"~~~~%%%%%%%$(line3)"},\
{"font":"dialog:linefour","text":"~~~~%%%%%%%$(line4)"}]



title @s actionbar [\
{text:"d",font:"dialog:spacer"},{"shadow_color":0,"font":"dialog:board",score:{name:"@s",objective:"dialog.board"}},\
{text:"ac",font:"dialog:spacer"},{nbt:"lines.line1",storage:"dialog:temp",interpret:1b,font:"dialog:lineone"},{nbt:"lines.line1_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line2",storage:"dialog:temp",interpret:1b,font:"dialog:linetwo"},{nbt:"lines.line2_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line3",storage:"dialog:temp",interpret:1b,font:"dialog:linethree"},{nbt:"lines.line3_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line4",storage:"dialog:temp",interpret:1b,font:"dialog:linefour"},{nbt:"lines.line4_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"}]
#a
#a322
#a3
#a


#$title @s actionbar [\
{"font":"dialog:lineone","text":"$(line1)"},\
{"font":"dialog:linetwo","text":"~~~~%%%%%%%$(line2)"},\
{"font":"dialog:linethree","text":"~~~~%%%%%%%$(line3)"},\
{"font":"dialog:linefour","text":"~~~~%%%%%%%$(line4)"}]
