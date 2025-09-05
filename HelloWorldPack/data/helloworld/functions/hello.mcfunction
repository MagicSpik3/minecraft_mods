# This function runs automatically on /reload.
# It announces that the pack is loaded and tells the user what to do next.

tellraw @a [{"text":"[HelloWorld] ","color":"aqua"},{"text":"Pack loaded! Run ","color":"white"},{"text":"/function helloworld:list_functions","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function helloworld:list_functions"}},{"text":" for a list of commands.","color":"white"}]
