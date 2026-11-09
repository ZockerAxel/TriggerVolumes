#Input Marcos: id, dx, dy, dz, on_enter, on_stay, on_exit

$tag @a[dx=$(dx), dy=$(dy), dz=$(dz)] add tvol.evaluate.$(id)

#On Stay
$execute as @a[tag=tvol.evaluate.$(id), tag=tvol.inside.$(id)] run function tvol_internals:volume/stay {id: $(id), callback: "$(on_stay)"}

#On Enter
$execute as @a[tag=tvol.evaluate.$(id), tag=!tvol.inside.$(id)] run function tvol_internals:volume/enter {id: $(id), callback: "$(on_enter)"}

#On Exit
$execute as @a[tag=tvol.inside.$(id), tag=!tvol.evaluate.$(id)] run function tvol_internals:volume/exit {id: $(id), callback: "$(on_exit)"}

#Cleanup
$tag @a[tag=tvol.evaluate.$(id)] remove tvol.evaluate.$(id)