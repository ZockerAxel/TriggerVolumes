#Marco Inputs: callback, storage, source_path, target_path
execute unless entity @e[tag=tvol.temp] summon marker run tag @s add tvol.temp

$data modify entity @e[tag=tvol.temp,limit=1] $(target_path) set from storage $(storage) $(source_path)
tp @e[tag=tvol.temp] ~ ~ ~

$execute as @e[tag=tvol.temp,limit=1] run $(callback)