# Apex Container Creator Utility (ACCU)

## Known Issues and Further Information

- Currently only working Docker options:
  - `1` Clone from current system
  - `5` Create from squashfs  
  (All other options haven't been tested)
- Incus system container options work from tests
- User data is incorrect - I aim to try and fix this soon
- Sound in Incus system container hasn't been integrated yet
- This is nearly stable and most functions now work

---

## Changelog

### ACCU v1.0 build 16/04/2025
- Incus system container support added for:
  - Current system
  - From squashfs
- No further changes

### ACCU v1.0 build 05/04/2025
- Docker container support added
- C++ and Python new fixes to cloning current system - it now finally works from tests
- New changes to cloning drive (though it hasn't been tested)
- New colors to commands process updates
- This is nearly stable and most functions now work - just .img.xz and drives to test and finish

---

## Steps for Docker Containers

1. Setup Docker
   - Setup Docker using online guides

2. Use the menu options
   - Choose a container name (e.g., `arch`)
   - Choose an option (e.g., `1` clone from current system or `5` create from squashfs - all other options haven't been tested)
   - Let the script do the rest
   - Additional option: Launch an existing container

---

## Steps for Incus System Containers

1. Setup Incus
   - Setup Incus using online guides to then use `incus admin init` command
   - Don't make any profiles or containers
   - Just go through options in command `incus admin init`

2. Add a profile
   - Open a konsole in current directory containing `gpu.yaml`
   - Use command: `incus profile create gpu < gpu.yaml`

3. Add another profile
   - Open a konsole in current directory containing `mount.yaml`
   - Use command: `incus profile create mount < mount.yaml`

4. Create containers or launch them
   - **Option 1**: Launch existing container
   - **Option 2**: Clone current system into Incus system container
     - Follow 1 step from konsole output
   - **Option 3**: Create from squashfs
     - Follow 1 step from konsole output
     
5. add the profiles to your container then restart your container
   - incus profile add containername gpu
   - incus profile add containername mount
   - incus restart containername
   
6. Configure for X11 or Wayland Desktops
   - Use `.bashrc` file in current directory
   - Backup your bashrc in container and copy new one or simply copy and paste:
     - `/bin/bash` or restart container
     - `then use command dbus-launch hyprland` or `startplasma-wayland ect....`
    
7. launch your container as user after reboot 
  - incus exec containername -- su - username
