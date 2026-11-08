#Input Marcos: id, dx, dy, dz, on_enter, on_stay, on_exit

$tag @a[dx=$(dx), dy=$(dy), dz=$(dz)] add tvol.evaluate.$(id)

#On Stay
$execute as @e[tag=tvol.evaluate.$(id), tag=tvol.inside.$(id)] at @s run function tvol_internals:volume/stay {id: $(id), callback: "$(on_stay)"}

#On Enter
$execute as @e[tag=tvol.evaluate.$(id), tag=!tvol.inside.$(id)] at @s run function tvol_internals:volume/enter {id: $(id), callback: "$(on_enter)"}

#On Exit
$execute as @e[tag=tvol.inside.$(id), tag=!tvol.evaluate.$(id)] at @s run function tvol_internals:volume/exit {id: $(id), callback: "$(on_exit)"}

#Cleanup
$tag @e[tag=tvol.evaluate.$(id)] remove tvol.evaluate.$(id)