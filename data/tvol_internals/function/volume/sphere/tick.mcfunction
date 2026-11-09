execute unless entity @s[scores={tvol.id=1..}] run function tvol_internals:volume/assign_id

#Self-healing defaults
execute unless data entity @s data.tvol.radius run data modify entity @s data.tvol.radius set value 3

execute unless data entity @s data.tvol.condition run data modify entity @s data.tvol.condition set value "type=!#tvol:ignored"

execute unless data entity @s data.tvol.on_enter.command run data modify entity @s data.tvol.on_enter.command set value "function tvol_internals:discard"
execute unless data entity @s data.tvol.on_enter.function run data modify entity @s data.tvol.on_enter.function set value "tvol_internals:discard"
execute unless data entity @s data.tvol.on_stay.command run data modify entity @s data.tvol.on_stay.command set value "function tvol_internals:discard"
execute unless data entity @s data.tvol.on_stay.function run data modify entity @s data.tvol.on_stay.function set value "tvol_internals:discard"
execute unless data entity @s data.tvol.on_exit.command run data modify entity @s data.tvol.on_exit.command set value "function tvol_internals:discard"
execute unless data entity @s data.tvol.on_exit.function run data modify entity @s data.tvol.on_exit.function set value "tvol_internals:discard"

#Load active volume into storage
data modify storage tvol:temp active_volume set from entity @s data.tvol
execute store result storage tvol:temp active_volume.id int 1 run scoreboard players get @s tvol.id

#Flatten event structure
data modify storage tvol:temp active_volume.on_enter_command set from storage tvol:temp active_volume.on_enter.command
data modify storage tvol:temp active_volume.on_enter_function set from storage tvol:temp active_volume.on_enter.function

data modify storage tvol:temp active_volume.on_stay_command set from storage tvol:temp active_volume.on_stay.command
data modify storage tvol:temp active_volume.on_stay_function set from storage tvol:temp active_volume.on_stay.function

data modify storage tvol:temp active_volume.on_exit_command set from storage tvol:temp active_volume.on_exit.command
data modify storage tvol:temp active_volume.on_exit_function set from storage tvol:temp active_volume.on_exit.function

#Extract data for outline visualization
execute if entity @a[scores={tvol.outline=1}] run function tvol_internals:volume/sphere/outline/display

#Dispatch evaluation depending on type
execute if entity @s[tag=tvol.sphere.entity] run function tvol_internals:volume/sphere/evaluate_entity with storage tvol:temp active_volume
execute if entity @s[tag=tvol.sphere.player] run function tvol_internals:volume/sphere/evaluate_player with storage tvol:temp active_volume
