# quotes
Shell script to get a new motivational quote everyday  
  
Cron-job:
```
@reboot sleep 300 && XDG_RUNTIME_DIR=/run/user/$(id -u) /home/manthan/shell_scripting/quote.sh > /home/manthan/shell_scripting/quote.txt
```


