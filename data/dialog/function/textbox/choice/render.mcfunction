#{text:"d",font:"dialog:spacer"},{"shadow_color":0,"font":"dialog:board",score:{name:"@s",objective:"dialog.board"}},

title @s actionbar [\
{text:"d",font:"dialog:spacer"},{"shadow_color":0,"font":"dialog:choice_board",score:{name:"@s",objective:"dialog.board"}},\
{text:"ac",font:"dialog:spacer"},{nbt:"lines.line1",storage:"dialog:temp",interpret:1b,font:"dialog:lineone"},{nbt:"lines.line1_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.selected1",storage:"dialog:temp",interpret:1b,font:"dialog:lineone"},\
{text:"bd",font:"dialog:spacer"},{nbt:"lines.pointerup",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.scrollLine1.rich",storage:"dialog:temp",interpret:1b,font:"dialog:lineone"},\
{nbt:"lines.scrollLine1.spacer",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line2",storage:"dialog:temp",interpret:1b,font:"dialog:linetwo"},{nbt:"lines.line2_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.selected2",storage:"dialog:temp",interpret:1b,font:"dialog:linetwo"},\
{nbt:"lines.scrollLine2.rich",storage:"dialog:temp",interpret:1b,font:"dialog:linetwo"},\
{nbt:"lines.scrollLine2.spacer",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line3",storage:"dialog:temp",interpret:1b,font:"dialog:linethree"},{nbt:"lines.line3_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.selected3",storage:"dialog:temp",interpret:1b,font:"dialog:linethree"},\
{nbt:"lines.scrollLine3.rich",storage:"dialog:temp",interpret:1b,font:"dialog:linethree"},\
{nbt:"lines.scrollLine3.spacer",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
\
{text:"a",font:"dialog:spacer"},{nbt:"lines.line4",storage:"dialog:temp",interpret:1b,font:"dialog:linefour"},{nbt:"lines.line4_space",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.selected4",storage:"dialog:temp",interpret:1b,font:"dialog:linefour"},\
{text:"bd",font:"dialog:spacer"},{nbt:"lines.pointerdown",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"},\
{nbt:"lines.scrollLine4.rich",storage:"dialog:temp",interpret:1b,font:"dialog:linefour"},\
{nbt:"lines.scrollLine4.spacer",storage:"dialog:temp",interpret:1b,font:"dialog:spacer"}\
]




#$title @s actionbar [\
{"font":"dialog:lineone","text":"$(line1)|$(selected1)|$(scrollLine1)|"},\
{"font":"dialog:lineone","text":"$(line2)|$(selected2)|$(scrollLine2)|"},\
{"font":"dialog:lineone","text":"$(line3)|$(selected3)|$(scrollLine3)|"},\
{"font":"dialog:lineone","text":"$(line4)|$(selected4)|$(scrollLine4)|"}]

#$title @s actionbar [\
{"shadow_color":0,"font":"dialog:choice_board","text":"%$(board)~"},\
{"font":"dialog:lineone","text":"$(line1)$(selected1)$(pointerup)$(scrollLine1)"},\
{"font":"dialog:linetwo","text":"~~~~%%%%%%%$(line2)$(selected2)$(scrollLine2)"},\
{"font":"dialog:linethree","text":"~~~~%%%%%%%$(line3)$(selected3)$(scrollLine3)"},\
{"font":"dialog:linefour","text":"~~~~%%%%%%%$(line4)$(selected4)$(pointerdown)$(scrollLine4)"}]