sudo -S rm -rf /home/$USER/.run/
mkdir -pm 0700 /home/$USER/.run
chown -R 1000:1000 /home/$USER/.run
ln -s /mnt/wayland-0 /home/$USER/.run/wayland-1
export DISPLAY=:0
export PULSE_SERVER=unix:/mnt/pulse-native
export PIPEWIRE_RUNTIME_DIR=/mnt
export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/home/$USER/.run
export XDG_SESSION_TYPE=wayland
dbus-run-session startplasma-wayland
