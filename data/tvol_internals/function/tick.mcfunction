function tvol_internals:heal_tags
function tvol_internals:temp_marker/kill_duplicates

function tvol_internals:outline/advance_animation_timeline

execute as @e[tag=tvol.box] at @s align xyz run function tvol_internals:volume/box/tick
execute as @e[tag=tvol.sphere] at @s run function tvol_internals:volume/sphere/tick
