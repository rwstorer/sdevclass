---
title: "VirtualBox"
tags:
  - VM
  - virtual machine
  - virtualization
  - testing
  - oracle
---

## Installation

Oracle really does a great job with the installation. Execute the installer and follow the prompts. Make a note of the install path (change it if you wish). The installer will warn you about briefly losing network connectivity if you install the VirtualBox networking features.

### Downloads

Pick the [VirtualBox download](https://www.virtualbox.org/wiki/Downloads) that works with your operating system. Optionally, I recommend installing the VirtualBox Extension Pack for a more robust VirtualBox integration with your OS. You can find a link on the page for a user manual also.

## Creating a Windows Virtual Machine (VM)

You can [download a Windows 11 ISO](https://www.microsoft.com/en-us/software-download/windows11/) directly from Microsoft.

In the VirtualBox Manager:

1. Click the `Machine` menu
2. Select the `New` menu item
3. Input the `Name` for your new VM (it will create a child folder by this name under the `Folder` option below during install)
4. Select the `Folder` where you will store the VM
5. Choose the `ISO image`
6. Confirm the `Edition` of Windows you will install (preferably the "Pro" edition)
7. If you have the option `Skip Unattended Installation` and have a product key, I recommend leaving it unchecked for a completely automated install. If you *do not* have a product key, check it.
8. Click the `Next` button to proceed to the `Unattended Guest OS Install Setup`

### Unattended Guest OS Install Setup (skipped if you don't have a product key)

9. Set the `Username`, `Password`, `Hostname`, `Domain Name`, and `Product Key` as you see fit
10. Make certain you check the `Guest Additions` checkbox so the install process adds them
11. Since we will watch this install, don't check the `Install in Background` checkbox
12. Click the `Next` button to proceed to the `Hardware` screen

### Hardware

13. Take the default settings for `Base Memory` (4096), `Processors` (2), and `Enable EFI` checkbox checked
14. Click the `Next` button to move on to `Virtual Hard disk`

### Virtual Hard disk

15. Unless you have specific requirements, take the defaults for `Disk Size` (80GB)
16. **DO NOT** check the `Pre-allocate Full Size` checkbox
17. Click the `Next` button to go to the `Summary` window

### Summary

18. Confirm you have all the settings correctly set
19. Click the `Finish` button
20. Click the `Start` button if the VM does not automatically start
21. When the VM starts, you must click inside the VM's console window and press the `space bar` to mount the DVD

## Manual OS Installation

1. Select your language of choice
2. Click the `Next` button
3. Click the `Install now` button
4. Click the `I don't have a product key` link if you don't have a product key. Otherwise, enter the product key and click the `Next` button
5. Select the version of Windows you want to install--I will choose Windows 11 Pro. Click the `Next` button
6. Check the checkbox to `accept the Microsoft Software License Terms`, and click the `Next` button
7. Choose the `Custom` option
8. Click the `Next` button to use the entire default disk drive
9. Pick your country or region (United States) and click the `Yes` button
10. Select your keyboard layout (US) and click the `Yes` button
11. Click the `Skip` button to move past adding a second keyboard layout
12. (The VM checks for updates)
13. (The VM restarts)
14. Name the computer and click the `Next` button
15. (The VM reboots again)
16. Select to `Set up for personal use` and click the `Next` button
    - In the Oracle VM VirtualBox window, click the `Devices` menu and select the `Network` and then the `Network Settings...` menu items
    - For `Adapter 1`, on `Attached to` choose "Not attached" and click the `OK` button
17. Back inside the OS install Window, choose the `Back Arrow` button on the top left
18. Press `Shift-F10` to open a CMD prompt
19. Type `oobe\bypassnro` and wait 15 seconds for the machine to reboot
    - If the VM does not reboot, go to the VirtualBox menu `Machine` and select `Reset` and confirm it
    - It will reboot and have you answer a few keyboard and other questions again
20. At the `Let's connect you to a network` screen click the `I don't have internet` link at the bottom (to the left of the `Next` button)
21. Select the `Continue with limited setup` link at the bottom of the screen
22. Enter your name
23. Enter your password
24. Answer the three question and answer prompts
25. If the privacy settings show up, set all of them to `No` and click the `Accept` button
26. Wait for the VM to complete final setup

Done!
