data modify storage dialog:temp lines.line1 set string storage dialog:temp shortString 0 18
data modify storage dialog:temp lines.line2 set string storage dialog:temp shortString 18 36
data modify storage dialog:temp lines.line3 set string storage dialog:temp shortString 36 54
$data modify storage dialog:temp lines.line4 set string storage dialog:temp shortString 54 $(shortLength)

function dialog:util/add_line_spaces {"input":"dialog:temp lines.line4","amount":"18"}

