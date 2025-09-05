# File: data/death_compass/functions/main.mcfunction
# Runs every tick. Updates compasses for players who have died and are holding the compass.

# Find players who have a death location and are holding the special compass
execute as @a[scores={hasGrave=1..},nbt={SelectedItem:{tag:{death_compass:{is_grave_compass:1b}}}}] run function death_compass:update_compass

# Find players who are near their grave to trigger the cleanup
# The 'at @s' is important to run the distance check from the player's location
execute as @a[scores={hasGrave=1..}] at @s run function death_compass:cleanup