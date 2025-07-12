data modify storage dialog:temp lines.line1 set string storage dialog:temp shortString 0 32
$data modify storage dialog:temp lines.line2 set string storage dialog:temp shortString 32 $(shortLength)


function dialog:util/add_line_spaces {"input":"dialog:temp lines.line2","amount":"32"}
