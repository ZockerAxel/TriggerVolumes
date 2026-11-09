#Input Marcos: id, dx, dy, dz, on_enter_command, on_enter_function, on_stay_command, on_stay_function, on_exit_command, on_exit_function

$tag @e[distance=..$(radius)] add tvol.evaluate.$(id)

#On Stay
$execute as @e[tag=tvol.evaluate.$(id), tag=tvol.inside.$(id)] run function tvol_internals:volume/stay {id: $(id), callback_command: "$(on_stay_command)", callback_function: "$(on_stay_function)"}

#On Enter
$execute as @e[tag=tvol.evaluate.$(id), tag=!tvol.inside.$(id)] run function tvol_internals:volume/enter {id: $(id), callback_command: "$(on_enter_command)", callback_function: "$(on_enter_function)"}

#On Exit
$execute as @e[tag=tvol.inside.$(id), tag=!tvol.evaluate.$(id)] run function tvol_internals:volume/exit {id: $(id), callback_command: "$(on_exit_command)", callback_function: "$(on_exit_function)"}

#Cleanup
$tag @e[tag=tvol.evaluate.$(id)] remove tvol.evaluate.$(id)
