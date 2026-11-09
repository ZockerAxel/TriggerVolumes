#Constants
scoreboard players set #360 tvol.temp 360
scoreboard players set #45 tvol.temp 45
scoreboard players set #90 tvol.temp 90
scoreboard players set #135 tvol.temp 135
scoreboard players set #180 tvol.temp 180
scoreboard players set #225 tvol.temp 225
scoreboard players set #270 tvol.temp 270
scoreboard players set #315 tvol.temp 315

scoreboard players set #min_size tvol.temp 400
scoreboard players set #speed tvol.temp 10

#Extract config
data modify storage tvol:temp outline.center_x set from entity @s Pos[0]
data modify storage tvol:temp outline.center_y set from entity @s Pos[1]
data modify storage tvol:temp outline.center_z set from entity @s Pos[2]

data modify storage tvol:temp outline.radius set from entity @s data.tvol.radius

#Calculate particle size
execute store result score #size tvol.outline run data get storage tvol:temp outline.radius 40

scoreboard players operation #size tvol.outline += #min_size tvol.temp
execute if score #size tvol.outline matches 4000.. run scoreboard players set #size tvol.outline 4000

#Handle rotation animation
scoreboard players operation #base_angle tvol.outline = #animation_timeline tvol.outline
scoreboard players operation #base_angle tvol.outline *= #speed tvol.temp
scoreboard players operation #base_angle tvol.outline %= #360 tvol.temp

scoreboard players operation #angle0 tvol.outline = #base_angle tvol.outline

scoreboard players operation #angle1 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle1 tvol.outline += #45 tvol.temp
scoreboard players operation #angle1 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle2 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle2 tvol.outline += #90 tvol.temp
scoreboard players operation #angle2 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle3 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle3 tvol.outline += #135 tvol.temp
scoreboard players operation #angle3 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle4 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle4 tvol.outline += #180 tvol.temp
scoreboard players operation #angle4 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle5 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle5 tvol.outline += #225 tvol.temp
scoreboard players operation #angle5 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle6 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle6 tvol.outline += #270 tvol.temp
scoreboard players operation #angle6 tvol.outline %= #360 tvol.outline

scoreboard players operation #angle7 tvol.outline = #base_angle tvol.outline
scoreboard players operation #angle7 tvol.outline += #315 tvol.temp
scoreboard players operation #angle7 tvol.outline %= #360 tvol.outline

#Build outline data in storage

#Size
execute store result storage tvol:temp outline.size double 0.001 run scoreboard players get #size tvol.outline

#Angles
execute store result storage tvol:temp outline.angle0 int 1 run scoreboard players get #angle0 tvol.outline
execute store result storage tvol:temp outline.angle1 int 1 run scoreboard players get #angle1 tvol.outline
execute store result storage tvol:temp outline.angle2 int 1 run scoreboard players get #angle2 tvol.outline
execute store result storage tvol:temp outline.angle3 int 1 run scoreboard players get #angle3 tvol.outline
execute store result storage tvol:temp outline.angle4 int 1 run scoreboard players get #angle4 tvol.outline
execute store result storage tvol:temp outline.angle5 int 1 run scoreboard players get #angle5 tvol.outline
execute store result storage tvol:temp outline.angle6 int 1 run scoreboard players get #angle6 tvol.outline
execute store result storage tvol:temp outline.angle7 int 1 run scoreboard players get #angle7 tvol.outline

function tvol_internals:volume/sphere/outline/render with storage tvol:temp outline