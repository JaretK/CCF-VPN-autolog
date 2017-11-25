# CCF-VPN-autolog

Logs the user into the CCF VPN or vpn.case.edu when the program is launched (it can also be launced at startup by placing a shortcut into the shell:startup folder)

To make it work, you need to place your 4Corners and case vpn profiles into the default install filepath or whatever filepath is specified in the beginning of the script. The default path in the script is "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client". Change the line 'cd "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client"' to what your install filepath is (you probably don't need to change it!). Follow the below steps to add the profiles:

1) Open a text editor (notepad is fine)
2) Make your 4Corners profile. Copy the below text into the text editor [NOTE: make sure there are no empty lines]:
connect 4Corners  
PASSWORD  

3) Replace PASSWORD with your login password. This will change whenever you are prompted to change the password every few months. 
4) Save this file as 4Corners_cisco_profile.txt in the directory specified above (once again, it's probably "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client"). 
5) Open a new file in the text editor
6) Make your case profile. Copy the below text into the new text editor file [NOTE: make sure there are no empty lines above "connect vpn.case.edu" and below "y", but there SHOULD be two empty lines above "PASSWORD"]:
connect vpn.case.edu  
  
  
PASSWORD  
push  
y  

7) Replace PASSWORD with your case id password. NOTE: This will send a push notification to your phone as part of case's two factor authenication. This script will NOT work if you prefer to enter the rotating code into the vpn. This script was tested using duomobile for iphone, I have no idea if the notification process is similar on androids, etc. 
8) Save this file as case_cisco_profile.txt in the same location as your 4Corners_cisco_profile.txt file. 
9) Enjoy!
