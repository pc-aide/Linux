: '
-----------------------------------------------------------------------------------
  man: https://linux.die.net/man/8/isoinfo
  
  args:
    -d --Print information from the primary volume
        descriptor (PVD) of the iso9660 image.
        This includes information about Rock Ridge,
        Joliet extensions and Eltorito boot information if present.
        
    -i --Specifies the path of the iso9660 image that we wish to examine. The options -i and dev=target are mutual exclusive.
-----------------------------------------------------------------------------------
'

#Bootable (https://imgur.com/N8e2oDq)
isoinfo -d -i VMware-VMvisor-Installer-7.0.0-15525992.x86_64.iso

#Non Bootable (https://imgur.com/3pSIaWZ)
isoinfo -d -i VMware-VCA-all-7.0.0-16189094.iso
