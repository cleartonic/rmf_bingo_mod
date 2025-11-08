## R&F Bingo Mod

Features:
- Immediate game start to stage select
- All 8 Robot Master & King stages selectable
- King stage will give all Robot Master weapons

# Usage
** UPDATE YOUR EMULATORS TO THE LATEST VERSION!! **  
Use Lunar IPS to apply rmf_bingo.ips to a Rockman & Forte (J) ROM.  
It is recommended to make a copy of your source file, rename it something with "bingo" in the name, then apply the IPS patch to that file.  
** UPDATE YOUR EMULATORS TO THE LATEST VERSION!! **  

# Troubleshooting
If you want to confirm the before & after files are correct, do the following (on Windows):  
- Open Windows Explorer, navigate to the folder where your RM7 ROMs are  
- Shift + Right Click > "Open PowerShell window here"  
- In Powershell, use the following command, substituting the [file] with your file name: `CertUtil -hashfile '[file]' md5`  
- The source file should return the following hash: `55d9cdb05f53a3f7a5e3eacb81b28f09`  
- The patched file should return the following hash: `288f060436c23b52c36f4ab68de29917`  

Confirmed emulators: Snes9x 1.60+, bsnes, Bizhawk (SPECIFICALLY using the bsnes core! Config > Preferred Cores > Snes > BSNES, then Emulation > Reboot Core)