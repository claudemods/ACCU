# Apex Container Creator Utility (ACCU)

## Known Issues and Further Information

- Currently only working Docker options:
  - `1` Clone from current system
  - `5` Create from squashfs
  (All other options haven't been tested)
- Incus system container options work from tests
-  you must push enter twice when asked in konsole during incus options
- This is nearly stable and most functions now work

---

## Changelog

### ACCU v1.0 build 26/04/2025
new mechanism for incus options fixing cloning problems
- No further changes

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
   - only make default profile provided by command `incus admin init`


2. Create containers or launch them
   - **Option 1**: Launch existing container
   - **Option 2**: Clone current system into Incus system container
     - please create a container manually for your distro then use this method
   - **Option 3**: Create from squashfs
     - please create a container for your distro manually then use this method
3. add the profile from Incus Profiles folder on github to your container then restart your container
   - Add a profile
   - Open a konsole in current directory containing `components.yaml`
   - Use command: `incus profile create components < components.yaml`
    - incus profile add containername components
   - incus restart containername
4. Configure for Wayland Desktops
   - Use `.bashrc` file in github Incus Profiles folder
   - Backup your bashrc in container and copy new one or simply copy and paste:
     - `/bin/bash` or restart container
     - `then use command dbus-launch hyprland` or `startplasma-wayland ect....`

5. launch your container as user after reboot
  - incus exec containername -- su - username
