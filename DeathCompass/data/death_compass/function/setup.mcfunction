# File: data/death_compass/function/setup.mcfunction
# Runs once when the world is loaded or reloaded.
# Creates the scoreboards needed to track deaths and grave locations.

scoreboard objectives add deaths deathCount
scoreboard objectives add hasGrave dummy
scoreboard objectives add deathX dummy
scoreboard objectives add deathY dummy
scoreboard objectives add deathZ dummy
scoreboard objectives add deathDim dummy

# Announce that the data pack is loaded and ready.
tellraw @a [{"text":"[Death Compass] ","color":"gold"},{"text":"Data pack loaded successfully.","color":"green"}]
