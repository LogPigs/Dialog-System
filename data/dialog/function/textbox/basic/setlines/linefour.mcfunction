data modify storage dialog:temp lines.line1 set string storage dialog:temp shortString 0 32
data modify storage dialog:temp lines.line2 set string storage dialog:temp shortString 32 64
data modify storage dialog:temp lines.line3 set string storage dialog:temp shortString 64 96
$data modify storage dialog:temp lines.line4 set string storage dialog:temp shortString 96 $(shortLength)

function dialog:util/add_line_spaces {"input":"dialog:temp lines.line4","amount":"32"}