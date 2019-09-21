execute as @e[type=area_effect_cloud,tag=qc_jail_location] at @s run forceload remove ~ ~
execute as @e[type=area_effect_cloud,tag=qc_jail_location] run kill @s
tellraw @s {"text":"Removed jail!","color":"red"}
