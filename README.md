<p align="center">
  <img src="https://i.postimg.cc/JhMRf2RZ/claudemods-03-17-2025.gif">
</p>

<h1 align="center">Apex Container Creator Utility! (accu)</h1>



<div align="center">
<strong>Create Docker Containers And Incus System Containers From Cloned Linux Systems</strong><br>



<div align="center">
 <strong>Sailing The Seven Seas like Penguin's Eggs Remastersys, Refracta, Systemback and father Knoppix! 🚢🌊</strong><br>

 
<div align="center">
  <a href="https://www.deepseek.com/" target="_blank">
    <img alt="Homepage" src="https://i.postimg.cc/Hs2vbbZ8/Deep-Seek-Homepage.png" style="height: 30px; width: auto;">
  </a>


  
[![Version](https://img.shields.io/github/v/release/claudemods/ACCU?color=FFD700&label=Latest%20Release&style=for-the-badge)](https://github.com/claudemods/ACCU/releases/tag/Alphas-22-03PM)


<div align="center">
  <a href="https://www.docker.com/" target="_blank">
    <img alt="Homepage" src="https://i.postimg.cc/K887TD02/5429470.png" style="height: 30px; width: auto;">
  </a>

  <a href="https://linuxcontainers.org/incus/" target="_blank">
    <img alt="Homepage" src="https://i.postimg.cc/6qd0sf7Z/incus.png" style="height: 30px; width: auto;">
  </a>

<div align="center">
  
### All Supported Linux Distributions For Docker Containers

### All Supported Linux Distributions For Incus System Containers

| Arch Based        | Debian Based   | Red Hat Based  | Independent/Other |
|-------------------|---------------|---------------|-------------------|
| **Arch**    | **Debian**     | **Fedora**     | **Gentoo**        |
| **CachyOS**      | **Devuan**     | **CentOS**     | **NixOS**         |
| **Kde Linux**    | **Linux Mint** | **Alma Linux** | **openSUSE**      |
| **EndeavourOS**   | **MX Linux**   | **RHEL**      | **Slackware**     |
| **Garuda**  | **Pop!_OS**    | **Rocky Linux**| **Void Linux**    |
| **Arco**    | **Kde Neon**   | **Nobara**    |                   |
| **Manjaro**       | **Ubuntu**     |               |                   |
| **Artix**         | **Kubuntu**    |               |                   |

<h2 align="center">Prerequisites! ⚠️</h2>
<p align="center">
  <strong>docker/incus Installed And Setup</strong><br>
  <strong>python If You Choose The Python Script</strong><br>
  <strong>C++ If You Choose The C++ Arch Script</strong><br>
  <strong>python-pyqt6 If You Choose The Python Qt6 App</strong><br>
  <strong>c++ qt6 If You Choose The C++ Qt6 Arch App</strong><br>
  <strong>squashfs-tools For Squashfs Files</strong><br>
  <strong>rsync To Copy</strong><br>
  <strong>xz For .img.xz Files</strong><br>
  <strong>tar For .tar files</strong>
</p>

<h2 align="center">Key Features! 🛡️📦</h2>
<p align="center">
  <strong>1) Launch Wayland Or X11 Applications Using Existing Containers</strong><br>
  <strong>2) Clone Current System Into .tar</strong><br>
  <strong>3) Clone A Drive Into .tar</strong><br>
  <strong>4) Create from existing .tar file</strong><br>
  <strong>5) Create from .img.xz file</strong><br>
  <strong>6) Create from SquashFS file</strong>
</p>



  <strong>Known issues And Info 05-04-2025 22:44 PM Uk Time</strong><br>
<div align="center">
new fixes to cloning mechanism you can now clone a installed system
<div align="center">
squashfs function was recently fixed in C++ and Python Script so it works
  <div align="center">
.img.xz and cloning to drive cloning hasnt been tested

<div align="center">


no other known issues more fixes coming soon 


<strong> All Compiled Binaries Provided Are Currently Alpha Releases Test With Caution! ⚠️🏗️</strong><br>

<h2 align="center">Current Alpha Builds being updated now....</h2>
<p align="center">
  <a href="https://github.com/claudemods/ACCU/tree/main/C%2B%2B%20Script/Unstable%2005-04-2025/">Arch C++ Script</a><br>
  <a href="https://github.com/claudemods/ACCU/tree/main/Universal%20Script/Unstable%2005-04-2025">Python Script</a>
</p>


<div align="center">


## Known Issues and Further Information

- Currently only working Docker options:
  - `1` Clone from current system
  - `5` Create from squashfs  
  (All other options haven't been tested)
- Incus system container options work from tests
- User data is incorrect - I aim to try and fix this soon
- Sound in Incus system container hasn't been integrated yet
- This is nearly stable and most functions now work - just .img.xz and drives to test and finish

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




