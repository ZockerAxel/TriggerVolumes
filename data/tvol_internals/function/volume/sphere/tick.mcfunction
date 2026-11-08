execute unless entity @s[scores={tvol.id=1..}] run function tvol_internals:volume/assign_id

#Self-healing defaults
execute unless data entity @s data.tvol.radius run data modify entity @s data.tvol.radius set value 3

execute unless data entity @s data.tvol.on_enter run data modify entity @s data.tvol.on_enter set value "function tvol_internals:discard"
execute unless data entity @s data.tvol.on_stay run data modify entity @s data.tvol.on_stay set value "function tvol_internals:discard"
execute unless data entity @s data.tvol.on_exit run data modify entity @s data.tvol.on_exit set value "function tvol_internals:discard"

#Load active volume into storage
data modify storage tvol:temp active_volume set from entity @s data.tvol
execute store result storage tvol:temp active_volume.id int 1 run scoreboard players get @s tvol.id

#Extract data for outline visualization
execute if entity @a[scores={tvol.outline=1}] run function tvol_internals:volume/sphere/outline/display

#Dispatch evaluation depending on type
execute if entity @s[tag=tvol.sphere.entity] run function tvol_internals:volume/sphere/evaluate_entity with storage tvol:temp active_volume
execute if entity @s[tag=tvol.sphere.player] run function tvol_internals:volume/sphere/evaluate_player with storage tvol:temp active_volume
