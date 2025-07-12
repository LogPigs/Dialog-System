data modify storage dialog:temp lines.line1 set string storage dialog:temp shortString 0 18
$data modify storage dialog:temp lines.line2 set string storage dialog:temp shortString 18 $(shortLength)


function dialog:util/add_line_spaces {"input":"dialog:temp lines.line2","amount":"18"}
