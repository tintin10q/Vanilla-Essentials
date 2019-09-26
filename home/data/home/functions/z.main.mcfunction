# Check if player has cooldown
execute as @a[scores={goHome=1..}] if score @s qc.gohome_cd matches 1.. run tellraw @s [{"text":"You have a cooldown of ","color":"red"},{"score":{"name":"@s","objective":"qc.gohome_cd"},"color":"dark_red"},{"text":" ticks for this action!"}]
execute as @a[scores={setHome=1..}] if score @s qc.sethome_cd matches 1.. run tellraw @s [{"text":"You have a cooldown of ","color":"red"},{"score":{"name":"@s","objective":"qc.sethome_cd"},"color":"dark_red"},{"text":" ticks for this action!"}]

# If no cooldown execute sethome of gohome function
execute as @a[scores={setHome=1..}] if score @s qc.sethome_cd matches ..0 run function home:z.set_home
execute as @a[scores={goHome=1..}] if score @s qc.gohome_cd matches ..0 run function home:z.go_home

# Reset scores
scoreboard players set @a[scores={goHome=1..}] goHome 0
scoreboard players set @a[scores={setHome=1..}] setHome 0

# Enable triggers
scoreboard players enable @a setHome
scoreboard players enable @a goHome

# Initiate cooldown scores
scoreboard players add @a qc.gohome.cd 0
scoreboard players add @a qc.sethome.cd 0

# Make countdowns tick down
scoreboard players remove @a[scores={qc.gohome_cd=1..}] qc.gohome_cd 1
scoreboard players remove @a[scores={qc.sethome_cd=1..}] qc.sethome_cd 1

# I could also only eneble the trigger for people that have the #cooldown at 0?

# Made by Quinten Cabo
