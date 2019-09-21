execute as @e[type=area_effect_cloud,tag=qc_jail_location] at @s run forceload remove ~ ~
execute as @e[type=area_effect_cloud,tag=qc_jail_location] at @s run kill @s

summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:2147483647,Particle:"block air",Tags:["qc_jail_location"]}
execute as @e[type=area_effect_cloud,tag=qc_jail_location] at @s run forceload add ~ ~
tellraw @s {"text":"Moved jail!","color":"green"}
