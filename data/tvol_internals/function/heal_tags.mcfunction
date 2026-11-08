#Heal tags

#Box
tag @e[tag=tvol.box.player, tag=!tvol.box] add tvol.box
tag @e[tag=tvol.box.entity, tag=!tvol.box] add tvol.box

tag @e[tag=tvol.box.entity, tag=tvol.box.player] remove tvol.box.player

tag @e[tag=tvol.box, tag=!tvol] add tvol

#Sphere
tag @e[tag=tvol.sphere.player, tag=!tvol.sphere] add tvol.sphere
tag @e[tag=tvol.sphere.entity, tag=!tvol.sphere] add tvol.sphere

tag @e[tag=tvol.sphere.entity, tag=tvol.sphere.player] remove tvol.sphere.player

tag @e[tag=tvol.sphere, tag=!tvol] add tvol

#Temp
tag @e[tag=tvol.temp, tag=!tvol] add tvol