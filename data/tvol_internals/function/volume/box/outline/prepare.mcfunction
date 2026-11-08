#Constants
scoreboard players set #min tvol.temp 1000
scoreboard players set #negative_one tvol.temp -1

#Extract config
execute store result score #x tvol.outline run data get entity @s Pos[0] 100
execute store result score #y tvol.outline run data get entity @s Pos[1] 100
execute store result score #z tvol.outline run data get entity @s Pos[2] 100

execute store result score #dx tvol.outline run data get entity @s data.tvol.dx 100
execute store result score #dy tvol.outline run data get entity @s data.tvol.dy 100
execute store result score #dz tvol.outline run data get entity @s data.tvol.dz 100

#Calculate particle display length
scoreboard players operation #duration_x tvol.outline = #dx tvol.outline
execute if score #duration_x tvol.outline matches ..-1 run scoreboard players operation #duration_x tvol.outline *= #negative_one tvol.temp

scoreboard players operation #duration_y tvol.outline = #dy tvol.outline
execute if score #duration_y tvol.outline matches ..-1 run scoreboard players operation #duration_y tvol.outline *= #negative_one tvol.temp

scoreboard players operation #duration_z tvol.outline = #dz tvol.outline
execute if score #duration_z tvol.outline matches ..-1 run scoreboard players operation #duration_z tvol.outline *= #negative_one tvol.temp

scoreboard players set #factor tvol.temp 3

scoreboard players operation #duration_x tvol.outline *= #factor tvol.temp
scoreboard players operation #duration_x tvol.outline += #min tvol.temp
execute if score #duration_x tvol.outline matches 20000.. run scoreboard players set #duration_x tvol.outline 20000

scoreboard players operation #duration_y tvol.outline *= #factor tvol.temp
scoreboard players operation #duration_y tvol.outline += #min tvol.temp
execute if score #duration_y tvol.outline matches 20000.. run scoreboard players set #duration_y tvol.outline 20000

scoreboard players operation #duration_z tvol.outline *= #factor tvol.temp
scoreboard players operation #duration_z tvol.outline += #min tvol.temp
execute if score #duration_z tvol.outline matches 20000.. run scoreboard players set #duration_z tvol.outline 20000

#Calculate bounds
scoreboard players operation #xmax tvol.outline = #x tvol.outline
scoreboard players add #xmax tvol.outline 100

execute if score #dx tvol.outline matches 0.. run scoreboard players operation #xmax tvol.outline += #dx tvol.outline
execute if score #dx tvol.outline matches ..-1 run scoreboard players operation #x tvol.outline += #dx tvol.outline

scoreboard players operation #ymax tvol.outline = #y tvol.outline
scoreboard players add #ymax tvol.outline 100

execute if score #dy tvol.outline matches 0.. run scoreboard players operation #ymax tvol.outline += #dy tvol.outline
execute if score #dy tvol.outline matches ..-1 run scoreboard players operation #y tvol.outline += #dy tvol.outline

scoreboard players operation #zmax tvol.outline = #z tvol.outline
scoreboard players add #zmax tvol.outline 100

execute if score #dz tvol.outline matches 0.. run scoreboard players operation #zmax tvol.outline += #dz tvol.outline
execute if score #dz tvol.outline matches ..-1 run scoreboard players operation #z tvol.outline += #dz tvol.outline

#Offset all coordinates by 0.01 because otherwise the particles originate from the center of the block (bruh)
scoreboard players add #x tvol.outline 1
scoreboard players add #y tvol.outline 1
scoreboard players add #z tvol.outline 1

scoreboard players add #xmax tvol.outline 1
scoreboard players add #ymax tvol.outline 1
scoreboard players add #zmax tvol.outline 1

#Build outline data in storage

data modify storage tvol:temp outline_data set value {duration_x: 0, duration_y: 0, duration_z: 0, c0_x: 0, c0_y: 0, c0_z: 0, c1_x: 0, c1_y: 0, c1_z: 0, c2_x: 0, c2_y: 0, c2_z: 0, c3_x: 0, c3_y: 0, c3_z: 0, c4_x: 0, c4_y: 0, c4_z: 0, c5_x: 0, c5_y: 0, c5_z: 0, c6_x: 0, c6_y: 0, c6_z: 0, c7_x: 0, c7_y: 0, c7_z: 0}

#Durations
execute store result storage tvol:temp outline_data.duration_x int 0.01 run scoreboard players get #duration_x tvol.outline
execute store result storage tvol:temp outline_data.duration_y int 0.01 run scoreboard players get #duration_y tvol.outline
execute store result storage tvol:temp outline_data.duration_z int 0.01 run scoreboard players get #duration_z tvol.outline

#c0 min corner (min, min, min)
execute store result storage tvol:temp outline_data.c0_x double 0.01 run scoreboard players get #x tvol.outline
execute store result storage tvol:temp outline_data.c0_y double 0.01 run scoreboard players get #y tvol.outline
execute store result storage tvol:temp outline_data.c0_z double 0.01 run scoreboard players get #z tvol.outline

#c1 (max, min, min)
execute store result storage tvol:temp outline_data.c1_x double 0.01 run scoreboard players get #xmax tvol.outline
execute store result storage tvol:temp outline_data.c1_y double 0.01 run scoreboard players get #y tvol.outline
execute store result storage tvol:temp outline_data.c1_z double 0.01 run scoreboard players get #z tvol.outline

#c2 (min, min, max)
execute store result storage tvol:temp outline_data.c2_x double 0.01 run scoreboard players get #x tvol.outline
execute store result storage tvol:temp outline_data.c2_y double 0.01 run scoreboard players get #y tvol.outline
execute store result storage tvol:temp outline_data.c2_z double 0.01 run scoreboard players get #zmax tvol.outline

#c3 (max, min, max)
execute store result storage tvol:temp outline_data.c3_x double 0.01 run scoreboard players get #xmax tvol.outline
execute store result storage tvol:temp outline_data.c3_y double 0.01 run scoreboard players get #y tvol.outline
execute store result storage tvol:temp outline_data.c3_z double 0.01 run scoreboard players get #zmax tvol.outline

#c4 (min, max, min)
execute store result storage tvol:temp outline_data.c4_x double 0.01 run scoreboard players get #x tvol.outline
execute store result storage tvol:temp outline_data.c4_y double 0.01 run scoreboard players get #ymax tvol.outline
execute store result storage tvol:temp outline_data.c4_z double 0.01 run scoreboard players get #z tvol.outline

#c5 (max, max, min)
execute store result storage tvol:temp outline_data.c5_x double 0.01 run scoreboard players get #xmax tvol.outline
execute store result storage tvol:temp outline_data.c5_y double 0.01 run scoreboard players get #ymax tvol.outline
execute store result storage tvol:temp outline_data.c5_z double 0.01 run scoreboard players get #z tvol.outline

#c6 (min, max, max)
execute store result storage tvol:temp outline_data.c6_x double 0.01 run scoreboard players get #x tvol.outline
execute store result storage tvol:temp outline_data.c6_y double 0.01 run scoreboard players get #ymax tvol.outline
execute store result storage tvol:temp outline_data.c6_z double 0.01 run scoreboard players get #zmax tvol.outline

#c7 (max, max, max)
execute store result storage tvol:temp outline_data.c7_x double 0.01 run scoreboard players get #xmax tvol.outline
execute store result storage tvol:temp outline_data.c7_y double 0.01 run scoreboard players get #ymax tvol.outline
execute store result storage tvol:temp outline_data.c7_z double 0.01 run scoreboard players get #zmax tvol.outline

function tvol_internals:volume/box/outline/render with storage tvol:temp outline_data