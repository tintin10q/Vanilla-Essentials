##New Players##
#Set's the players ID to be$.maxID#
execute as @a[tag=!hasID] at @a[tag=!hasID] run scoreboard players operation @a[tag=!hasID] ID = be$.maxID ID

#Adds 1 to be$.maxID ID score#
execute as @a[tag=!hasID] at @a[tag=!hasID] run scoreboard players add be$.maxID ID 1

#Adds the hasID tag to stop repeated adding#
tag @a[tag=!hasID,scores={ID=1..}] add hasID