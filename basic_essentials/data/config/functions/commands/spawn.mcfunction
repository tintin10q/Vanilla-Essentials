###Spawn###
#teleports player with a spawn score of 1 to the spawn#
execute as @a[scores={spawn=1..}] at @a[scores={spawn=1..}] run tp @s @e[type=armor_stand,tag=spawn,limit=1]
#Set's players spawn score to 0#
scoreboard players set @a[scores={spawn=1..}] spawn 0



##Set Spawn##
#Kill's all armor_stands with the spawn tag to stop duplicate spawns#
execute as @a[scores={setSpawn=1..}] at @a[scores={setSpawn=1..}] run kill @e[type=armor_stand,tag=spawn]

#Summons an armor_stand with the spawn tag#
execute as @a[scores={setSpawn=1..}] at @a[scores={setSpawn=1..}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["spawn"]}

#Tp's the armor_stand with the spawn tag to the player to get the playrs looking direction#
execute as @a[scores={setSpawn=1..}] at @a[scores={setSpawn=1..}] run tp @e[type=minecraft:armor_stand,tag=spawn,sort=nearest,limit=1] @s[distance=0]

#Set's world spawn at current location#
execute as @a[scores={setSpawn=1..}] at @a[scores={setSpawn=1..}] run setworldspawn ~ ~ ~
#Set's the players setSpawn Score to 0#
scoreboard players set @a[scores={setSpawn=1..}] setSpawn 0



#Triggers#
#spawn#
scoreboard players enable @a spawn
#set Spawn#
scoreboard players enable @a[tag=op] setSpawn