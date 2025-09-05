# File: find_trades.mcfunction
# This function will run every tick to highlight villagers with good trades.

# -- Tier S --
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}}] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:unbreaking"}]}}}] run effect give @s minecraft:glowing 10 0 true

# -- Armour --
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection"}]}}}] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:feather_falling"}]}}}] run effect give @s minecraft:glowing 10 0 true

# -- Weapons --
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:sharpness"}]}}}] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:looting"}]}}}] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power"}]}}}] run effect give @s minecraft:glowing 10 0 true
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:infinity"}]}}}] run effect give @s minecraft:glowing 10 0 true

execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:efficiency"}]}}}] run effect give @s minecraft:glowing 10 0 true
# ...add as many more as you want!
