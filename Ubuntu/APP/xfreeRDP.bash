 
: '
-----------------------------------------------------------------------------------
    Man: https://wiki.yola.ru/_media/freerdp/freerdp-user-manual.pdf
   
    Args:
        /f Fullscreen mode
        /v:<server>[:port] Server hostname
   
        xfreerdp /monitor-list
        xfreerdp /monitors:1,2 /multimon /v:<host>
-----------------------------------------------------------------------------------
'
 
#https://imgur.com/F5IcSyA
xfreerdp /monitor-list
 
#
xfreerdp /v:192.168.0.138 /u:adminS /monitors:1 /f
 
#Sound | https://imgur.com/crHJYB1
xfreerdp /v:<IP> /u:<User> /f /d:<Domain> /sound /microphone:sys:alsa #rdp
