#Macro Inputs: size, center_x, center_y, center_z, radius, angle0, angle1, angle2, angle3, angle4, angle5, angle6, angle7

particle dust{color:[0.0, 1.0, 1.0], scale: 1} ~ ~ ~ 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Vertical Rings 1
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle0) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle1) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle2) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle3) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle4) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle5) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle6) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 $(angle7) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Vertical Rings 2
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle0) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle1) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle2) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle3) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle4) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle5) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle6) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 45 $(angle7) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Vertical Rings 3
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle0) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle1) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle2) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle3) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle4) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle5) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle6) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 90 $(angle7) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Vertical Rings 4
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle0) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle1) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle2) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle3) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle4) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle5) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle6) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 135 $(angle7) run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Top and Bottom Point
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 -90 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated 0 90 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Horizontal Rings 1
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) -67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) -45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) -22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) 0 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) 22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) 45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle0) 67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) -67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) -45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) -22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) 0 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) 22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) 45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle4) 67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]

#Horizontal Rings 2
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) -67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) -45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) -22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) 0 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) 22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) 45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle2) 67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) -67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) -45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) -22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) 0 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) 22.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) 45 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
$execute positioned $(center_x) $(center_y) $(center_z) rotated $(angle6) 67.5 run particle dust{color:[1.0, 0.5, 0.0], scale: $(size)} ^0 ^0 ^$(radius) 0 0 0 0 1 force @a[scores={tvol.outline=1}]
