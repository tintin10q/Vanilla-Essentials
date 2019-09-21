execute as @e[tag=qc_jail_location] at @s run tp @a[tag=qc.jailed] ~ ~ ~ ~ ~
execute as @e[tag=qc_jail_location] at @s run effect give @a[tag=qc.jailed,distance=..0.2] resistance 1 127 true
execute as @e[tag=qc_jail_location] at @s run effect give @a[tag=qc.jailed,distance=..0.2] slowness 1 127 true
execute as @e[tag=qc_jail_location] at @s run effect give @a[tag=qc.jailed,distance=..0.2] levitation 1 255 true
execute as @e[tag=qc_jail_location] at @s run effect give @a[tag=qc.jailed,distance=..0.2] invisibility 1 255 true
gamemode adventure @a[tag=qc.jailed]
