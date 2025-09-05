# File: data/death_compass/functions/main.mcfunction
# Runs every tick. Updates compasses for players who have died and are holding the compass.

# Find players who have a death location and are holding the special compass
# The NBT check now looks for our new namespaced tag.
# execute as @a[scores={deathX=..},nbt={Inventory:[{tag:{death_compass:{is_grave_compass:1b}}}]}] run function death_compass:cleanup
execute as @a[scores={deathX=-2147483648..},nbt={Inventory:[{tag:{death_compass:{is_grave_compass:1b}}}]}] run function death_compass:cleanup



# Find all players holding the grave compass and update its Lodestone position to point to their death coordinates.
execute as @a[nbt={SelectedItem:{tag:{death_compass:{is_grave_compass:1b}}}}] at @s run item modify entity @s weapon.mainhand death_compass:update_compass

