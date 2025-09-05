# File: data/death_compass/functions/on_death.mcfunction
# Runs when a player dies. Creates a grave marker and gives them a special compass.

# Store the player's death location using the correct 'execute store' method.
execute store result score @s deathX run data get entity @s Pos[0] 1
execute store result score @s deathY run data get entity @s Pos[1] 1
execute store result score @s deathZ run data get entity @s Pos[2] 1

# Get the dimension ID (0=Overworld, 1=End, -1=Nether)
execute in minecraft:overworld run scoreboard players set @s deathDim 0
execute in minecraft:the_end run scoreboard players set @s deathDim 1
execute in minecraft:the_nether run scoreboard players set @s deathDim -1

# Place the grave chest and sign
setblock ~ ~ ~ chest
setblock ~ ~1 ~ oak_sign{front_text:{messages:['{"text":""}','{"selector":"@s"}','{"text":"\'s Grave"}','{"text":""}']}}

# Tell the player their coordinates in chat
tellraw @s ["",{"text":"[Death Compass] ","color":"gold"},{"text":"You died at ","color":"white"},{"text":"X:","color":"red"},{"score":{"name":"@s","objective":"deathX"},"color":"red"},{"text":" Y:","color":"green"},{"score":{"name":"@s","objective":"deathY"},"color":"green"},{"text":" Z:","color":"blue"},{"score":{"name":"@s","objective":"deathZ"},"color":"blue"}]

# Give the player the special compass with the namespaced NBT tag
# give @s minecraft:compass{death_compass:{is_grave_compass:1b}} 1

