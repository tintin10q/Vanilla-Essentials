# Scores that score the home location
scoreboard objectives add qc.home.loc.x dummy
scoreboard objectives add qc.home.loc.y dummy
scoreboard objectives add qc.home.loc.z dummy

# Trigger scores
scoreboard objectives add goHome trigger
scoreboard objectives add setHome trigger

# Cooldown scores
scoreboard objectives add qc.gohome_cd dummy
scoreboard objectives add qc.sethome_cd dummy

# Cooldown fake players
scoreboard players add #cooldown qc.gohome_cd 0
scoreboard players add #cooldown qc.sethome_cd 0
