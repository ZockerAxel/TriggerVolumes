execute if score @s tvol.outline matches 1 run function tvol_internals:outline/toggle_off
execute unless score @s tvol.outline matches 1 run function tvol_internals:outline/toggle_on

execute if score @s tvol.outline matches 2.. run scoreboard players set @s tvol.outline 0