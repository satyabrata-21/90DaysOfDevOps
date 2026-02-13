***Hands-on with LVM (Logical Volume Manager) in Linux on AWS
Today I practiced complete LVM setup and cleanup — from creating Physical Volumes to safely removing everything and deleting the AWS volume.***

**LVM Setup:**
Create a Physical Volume(PV):
I have used command below for PV creation:
- pvcreate /dev/xvdf
- verify PV: pvdisplay
**Create a Volume Group (VG):**
I have used command below for VG creation:
- vgcreate tws_vg  /dev/xvdf
- verify VG: vgdisplay
 **Create a Logical Volume(LV):**
***I have used command below for LV creation :***
Created 3 LV
- lvcreate -L 7G tws_vg  -n  tws_vg_devops_lv
- lvcreate -L 3G tws_vg -n  tws_vg_developer_lv
- lvcreate -L 3G tws_vg -n  tws_vg_tester_lv
- verify LV: lvdisplay
Now I have formatted logical volumes : tws_vg_tester_lv,  tws_vg_developer_lv, tws_vg_devops_lv.
- mkfs -t ext4 /dev/tws_vg/tws_vg_tester_lv
- mkfs -t ext4 /dev/tws_vg/tws_vg_developer_lv
- mkfs -t ext4 /dev/tws_vg/tws_vg_devops_lv
***Monuted all LV to /mnt/paths:***
Created mount point:- login root user
- mkdir /mnt/devops
- mkdir /mnt/developer
- mkdir /mnt/tester
***then mounted :***
- mount /dev/tws_vg/tws_vg_deveops_lv /mnt/devops
- mount /dev/tws_vg/tws_vg_developer_lv /mnt/developer
- mount /dev/tws_vg/tws_vg_tester_lv /mnt/tester
***Now Extend the Volume for texter 1Gb:***
- lvextend -L +1G /dev/tws_vg/tws_vg_tester
***then unmount volume:***
- umount /dev/tws_vg/tws_vg_deveops_lv 
- umount /dev/tws_vg/tws_vg_developer_lv 
- umount /dev/tws_vg/tws_vg_tester_lv 
***Logical Volume remove:***
- lvremove  /dev/tws_vg/tws_vg_deveops_lv 
- lvremove  /dev/tws_vg/tws_vg_developer_lv 
- lvremove  /dev/tws_vg/tws_vg_tester_lv 
 ***Volume group remove:***
- vgremove tws_vg
***Physical Volume remove:***
- pvremove /dev/xvdf
Then you can delete the volue in AWS.
