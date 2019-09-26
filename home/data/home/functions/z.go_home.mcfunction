# Summon the armorstand to teleport too
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["qc.go_home"],NoGravity:1b}

# Take the stored home coordinates and move the armorstand there
execute store result entity @e[type=armor_stand,tag=qc.go_home,limit=1] Pos[0] double 1 run scoreboard players get @s qc.home.loc.x
execute store result entity @e[type=armor_stand,tag=qc.go_home,limit=1] Pos[1] double 1 run scoreboard players get @s qc.home.loc.y
execute store result entity @e[type=armor_stand,tag=qc.go_home,limit=1] Pos[2] double 1 run scoreboard players get @s qc.home.loc.z

# Teleport to the position of the armorstand
execute at @e[type=armor_stand,tag=qc.go_home,limit=1] align xz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~

# Kill the armorstand
kill @e[tag=qc.go_home]

# Add the cooldown
scoreboard players operation @s qc.gohome_cd = #cooldown qc.gohome_cd
