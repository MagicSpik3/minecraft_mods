# Runs when a player gets close to their grave marker.

# Announce that the items have been recovered.
tellraw @s [{"text":"[Death Compass] ","color":"gold"},{"text":"Grave found. Your compass returns to normal.","color":"green"}]

# Kill the marker armor stand.
kill @e[type=armor_stand,tag=grave_marker,distance=..4]

# Reset the player's grave flag.
scoreboard players set @s hasGrave 0

# Optional: Clear the special compass. You can comment this out if you want the player to keep it.
# clear @s minecraft:compass{GraveCompass:1b}
