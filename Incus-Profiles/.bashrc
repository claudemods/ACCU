first_launch_prompt() {
    COLOR='\033[1;36m'
    NC='\033[0m' # No Color

    echo -e "${COLOR}"
    read -p "Is this the first system launch? (yes/no): " answer
    echo -e "${NC}"

    case $answer in
        [yY]|[yY][eE][sS])
            echo "Executing first launch setup..."
            sudo rm -rf /home/$USER/.run/
            mkdir -pm 0700 /home/$USER/.run
            chown -R 1000:1000 /home/$USER/.run
            ln -s /mnt/wayland-0 /home/$USER/.run/wayland-1
            export DISPLAY=:0
            export PULSE_SERVER=unix:/mnt/pulse-native
            export PIPEWIRE_RUNTIME_DIR=/mnt
            export WAYLAND_DISPLAY=wayland-1
            export XDG_RUNTIME_DIR=/home/$USER/.run
            export XDG_SESSION_TYPE=wayland
            echo "Setup complete!"
            ;;
        [nN]|[nN][oO])
            echo "Skipping first launch setup."
            ;;
        *)
            echo "Invalid input. Please enter yes or no."
            ;;
    esac
}

# Only run this once per session (optional)
if [ -z "$FIRST_LAUNCH_PROMPT_SHOWN" ]; then
    first_launch_prompt
    export FIRST_LAUNCH_PROMPT_SHOWN=1
fi
