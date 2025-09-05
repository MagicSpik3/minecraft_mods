# This function is run by 'item modify'. @s is the player holding the item.
# Store the player's death coordinates from the scoreboard into the compass NBT
execute store result entity @s SelectedItem.tag.LodestonePos.X int 1 run scoreboard players get @s deathX
execute store result entity @s SelectedItem.tag.LodestonePos.Y int 1 run scoreboard players get @s deathY
execute store result entity @s SelectedItem.tag.LodestonePos.Z int 1 run scoreboard players get @s deathZ

execute store result entity @s SelectedItem.LodestonePos.X int 1 run scoreboard players get @s deathX
execute store result entity @s SelectedItem.LodestonePos.Y int 1 run scoreboard players get @s deathY
execute store result entity @s SelectedItem.LodestonePos.Z int 1 run scoreboard players get @s deathZ

# Store the dimension as a string (this is more complex)
# We'll create a temporary data storage to hold the string
data modify storage death_compass:temp dimension set value "minecraft:overworld"
execute if score @s deathDim matches -1 run data modify storage death_compass:temp dimension set value "minecraft:the_nether"
execute if score @s deathDim matches 1 run data modify storage death_compass:temp dimension set value "minecraft:the_end"

# Now copy that string into the compass NBT
#execute store result entity @s SelectedItem.tag.LodestoneDimension string 1 run data get storage death_compass:temp dimension

# Finally, ensure the compass is active
item modify entity @s weapon.mainhand death_compass:set_tracked