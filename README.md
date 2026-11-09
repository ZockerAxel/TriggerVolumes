# TVOL Trigger Volumes

TVOL Trigger Volumes adds easy-to-use trigger volumes that can be spawned with a single command and configured to run commands and functions on enter, exit or every tick inside.

## How to use

Summon a marker entity (technically any entity type is allowed, so you could attach volumes to moving entities etc.), add the tag for the shape and target detection you need, configure size and define event commands and/or functions.

Syntax:

```
/summon marker ~ ~ ~ {Tags:["tvol.<shape>.<target_type>"],data:{tvol:{<shape-dependant size args>,condition:<condition>,<callbacks>}}}
```

You can toggle visual outlines with

```
/function tvol:toggle_outline
```

### Supported Shapes

- `sphere`: Sphere Volume
  - Size Arg: `radius`: The sphere's radius. Only positive values allowed.
- `box`: Box Volume (full blocks only)
  - Size Args: `dx`, `dy` and `dz`: Describe size in x, y and z directions, these are fed directly into a target selector dx, dy and dz respectively and can be negative.

### Target Types

- `player`: Only detects players
- `entity`: May detect any kind of entity

### Conditions (optional)

Conditions are passed into an existing entity @e[] (or @a[]) target selector through a macro and may therefore include any custom selector arguments, but it is most useful to restrict entity types, e.g. with `type=minecraft:cow` to restrict detection to cows.

Defaults to `type=!#tvol:ignored`, which excludes markers, armor stands, item displays, block displays, text displays and interaction entities by default.

### Callbacks (optional)

You may specify any number of callbacks. Use the event name as a key and a compound tag with a function and/or command to run specified.

Example: `on_enter:{command:"say hi",function:"my_datapack:area_entered"},on_exit:{command:"say bye"},on_stay:{function:"my_datapack:area_stay"}`

If you don't intend on using an event, you don't need to specify it at all and you may use both a command and a function at the same time (command will execute before function).

### Examples

<details>
<summary>Player-detection sphere with enter and exit command</summary>
  
```
/summon marker ~ ~ ~ {Tags:["tvol.sphere.player"],data:{tvol:{radius:7.5,on_enter:{command:"say enter sphere"},on_exit:{command:"say exit sphere"}}}}
```

</details>

<details>
<summary>Box with glowing cows</summary>
  
```
/summon marker ~ ~ ~ {Tags:["tvol.box.entity"],data:{tvol:{dx:15,dy:3,dz:5,condition:"type=cow",on_stay:{command:"effect give @s minecraft:glowing 1 0 true"}}}}
```

</details>


<details>
<summary>Entity-detection box</summary>
  
```
/summon marker ~ ~ ~ {Tags:["tvol.box.entity"],data:{tvol:{dx:20,dy:5,dz:20,on_enter:{command:"say I entered the box",function:"my_datapack:enter_box"},on_exit:{function:"my_datapack:exit_box"}}}}
```

</details>

## Utility Functions

There are a couple of utility functions:
- `/function tvol:count {id:<id>}`: Returns amount of entities currently inside (not cached, but it uses @e[tag=...] to count all entities with that were already calculated to be inside and given the tag, so it doesn't do any new coordinate checks)
- `/execute as @n[tag=tvol.volume] run function tvol:identify`: Returns the id of a box or sphere volume. Must be executed as the volume you need the id of

There are also functions for creating simple boxes or spheres which do not have any event listeners set up.