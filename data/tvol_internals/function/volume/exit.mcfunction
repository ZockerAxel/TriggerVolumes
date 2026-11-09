#Input Marco: id, callback_command, callback_function

$tag @s remove tvol.inside.$(id)
$$(callback_command)
$function $(callback_function) {id: $(id)}