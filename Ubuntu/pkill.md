# pkill

## syntax
* pkill <process name>
````bash
pkill vlc
````

## siganl 
### Numbers
* 1 - (UP): to reload a process
* 9 (kill): to kill a process
* 15 (TERM): to gracefully stop a process
````Bash
pkill -9 vlc
````
