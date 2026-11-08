scoreboard players add #counter tvol.id 1
scoreboard players operation @s tvol.id = #counter tvol.id

execute if entity @s[type=marker] unless data entity @s CustomName run data modify entity @s CustomName set value {text:"TVOL Trigger Volume",color:"aqua"}