# This function lists all available functions in this pack.

tellraw @a {"text":"--- HelloWorld Pack Functions ---","color":"gold"}
tellraw @a ["",{"text":"- helloworld:hello","color":"green"},{"text":" | Prints 'Hello World!' in chat. ","color":"gray"},{"text":"[RUN]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function helloworld:hello"}}]
tellraw @a ["",{"text":"- helloworld:list_functions","color":"green"},{"text":" | Shows this list. ","color":"gray"},{"text":"[RUN]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function helloworld:list_functions"}}]
tellraw @a ["",{"text":"- helloworld:setup","color":"green"},{"text":" | Runs on load to show a welcome message. ","color":"gray"},{"text":"[RUN]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function helloworld:setup"}}]
