scoreboard players set @e[tag=tvol.temp] tvol.temp 0
scoreboard players set @e[tag=tvol.temp,limit=1,sort=arbitrary] tvol.temp 1

kill @e[tag=tvol.temp,scores={tvol.temp=0}]