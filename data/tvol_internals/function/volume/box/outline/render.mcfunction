#Macro Inputs: duration_x, duration_y, duration_z, c0_x, c0_y, c0_z through c7_x, c7_y, c7_z

particle dust{color:[0.0, 1.0, 1.0], scale: 1} ~ ~ ~ 0 0 0 0 1 force @a[scores={tvol.outline=1}]

# Bottom Edges
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c1_x), $(c1_y), $(c1_z)], duration: $(duration_x)} $(c0_x) $(c0_y) $(c0_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c2_x), $(c2_y), $(c2_z)], duration: $(duration_x)} $(c0_x) $(c0_y) $(c0_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c3_x), $(c3_y), $(c3_z)], duration: $(duration_z)} $(c1_x) $(c1_y) $(c1_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c3_x), $(c3_y), $(c3_z)], duration: $(duration_z)} $(c2_x) $(c2_y) $(c2_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

# Top Edges
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c5_x), $(c5_y), $(c5_z)], duration: $(duration_x)} $(c4_x) $(c4_y) $(c4_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c6_x), $(c6_y), $(c6_z)], duration: $(duration_x)} $(c4_x) $(c4_y) $(c4_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c7_x), $(c7_y), $(c7_z)], duration: $(duration_z)} $(c5_x) $(c5_y) $(c5_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c7_x), $(c7_y), $(c7_z)], duration: $(duration_z)} $(c6_x) $(c6_y) $(c6_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

# Vertical Pillars
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c4_x), $(c4_y), $(c4_z)], duration: $(duration_y)} $(c0_x) $(c0_y) $(c0_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c5_x), $(c5_y), $(c5_z)], duration: $(duration_y)} $(c1_x) $(c1_y) $(c1_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c6_x), $(c6_y), $(c6_z)], duration: $(duration_y)} $(c2_x) $(c2_y) $(c2_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$particle minecraft:trail{color:[0.0, 1.0, 1.0], target:[$(c7_x), $(c7_y), $(c7_z)], duration: $(duration_y)} $(c3_x) $(c3_y) $(c3_z) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
