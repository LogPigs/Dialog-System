$execute store result score .linelength dialog.var run data get storage $(input)

#get the amount of spaces needed for the end of the string
$scoreboard players set .extraspaces dialog.var $(amount)
scoreboard players operation .extraspaces dialog.var -= .linelength dialog.var


$data modify storage dialog:temp concat set value {"output":"$(input)", "string1":"", "string2":""}
$data modify storage dialog:temp concat.string1 set string storage $(input)

#a list of spaces for each interger between 0 and 32
function dialog:util/spaces_concat

#basic concat
function dialog:util/concat with storage dialog:temp concat