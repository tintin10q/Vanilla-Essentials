# Store the player position in scoreboard
execute store result score @s qc.home.loc.x run data get entity @s Pos[0]
execute store result score @s qc.home.loc.y run data get entity @s Pos[1]
execute store result score @s qc.home.loc.z run data get entity @s Pos[2]

# Display new home position
tellraw @s [{"text":"Your home was set too [","color":"green"},{"score":{"name":"@s","objective":"qc.home.loc.x"},"color":"dark_green"},{"text":", "},{"score":{"name":"@s","objective":"qc.home.loc.y"},"color":"dark_green"},{"text":", ","color":"green"},{"score":{"name":"@s","objective":"qc.home.loc.z"},"color":"dark_green"},{"text":"]","color":"green"}]

# Add cooldown
scoreboard players operation @s qc.sethome_cd = #cooldown qc.sethome_cd
