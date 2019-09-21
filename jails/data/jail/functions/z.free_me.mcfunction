tag @s remove qc.jailed
effect clear @s slowness
effect clear @s levitation
effect clear @s invisibility
effect clear @s resistance
gamemode survival @s
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["qc.jail_returnpoint"]}
execute store result entity @e[type=armor_stand,tag=qc.jail_returnpoint,limit=1] Pos[0] double 1 run scoreboard players get @s qc.jail.was.x
execute store result entity @e[type=armor_stand,tag=qc.jail_returnpoint,limit=1] Pos[1] double 1 run scoreboard players get @s qc.jail.was.y
execute store result entity @e[type=armor_stand,tag=qc.jail_returnpoint,limit=1] Pos[2] double 1 run scoreboard players get @s qc.jail.was.z
execute at @e[type=armor_stand,tag=qc.jail_returnpoint] run tp @s ~ ~ ~
kill @e[type=armor_stand,tag=qc.jail_returnpoint]
