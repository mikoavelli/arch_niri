#!/usr/bin/env bash

NIRI_CORE=(
  niri                     # A scrollable-tiling Wayland compositor
  alacritty                # A suggested GPU-accelerated terminal emulator
  swaybg                   # A suggested Wayland wallpaper tool
  swayidle                 # Idle management daemon for Wayland
  xwayland-satellite       # For running X11 apps in XWayland
  xdg-desktop-portal-gtk   # A suggested XDG desktop portal backend
  xdg-desktop-portal-gnome # A XDG desktop portal required for screencasting support
  sddm                     # QML based X11 and Wayland display manager
  rofi                     # A window switcher, application launcher
  wl-clipboard             # Command-line copy/paste utilities for Wayland
  mate-polkit              # Maintained polkit authentication agent
  noto-fonts               # Google Noto fonts (standard)
  noto-fonts-cjk           # Google Noto fonts (Chinese, Japanese, Korean)
  noto-fonts-emoji         # Google Noto fonts (Emoji support)
  inter-font               # A typeface specially designed for user interfaces
  ttf-jetbrains-mono-nerd  # JetBrains Mono font patched with Nerd Font symbols
  waybar                   # A suggested Wayland customizable desktop bar
  dunst                    # Lightweight and customizable notification daemon
)

AMD_VIDEO_DRIVERS=(
  libva-mesa-driver   # VA-API implementation for Gallium drivers
  libva-utils         # Collection of tools and examples for VA-API
  lib32-vulkan-radeon # 32-bit Vulkan driver for AMD GPUs (required for many Steam games)
  vulkan-mesa-layers  # Mesa Vulkan layers
  vulkan-radeon       # Open-source Vulkan driver for AMD GPUs
)

ESSENTIAL_PACKAGES=(
  adw-gtk-theme         # Libadwaita look for legacy GTK apps
  bash-completion       # Programmable completion for the bash shell
  bat                   # A cat(1) clone with syntax highlighting and Git integration
  btop                  # Terminal system resource monitor
  wget                  # Utility for non-interactive download of files from the Web
  blueberry             # A Bluetooth configuration tool
  brightnessctl         # A program to read and control device brightness
  playerctl             # MPRIS media player command-line controller
  dosfstools            # Utilities for creating and checking MS-DOS FAT filesystems
  ffmpegthumbnailer     # Lightweight video thumbnailer used by file managers
  firefox               # Popular open-source web browser
  flatpak               # Linux application sandboxing and distribution framework
  fwupd                 # Daemon to allow session software to update firmware
  git                   # Distributed version control system
  gvfs                  # Virtual filesystem support (trash, MTP, etc.)
  gvfs-mtp              # gvfs backend for MTP devices (Android phones)
  gst-plugins-bad       # GStreamer multimedia plugins (extra/non-standard)
  gst-plugins-base      # GStreamer multimedia plugins (essential)
  gst-plugins-ugly      # GStreamer multimedia plugins (restricted/proprietary)
  lazygit               # Simple terminal UI for git commands
  loupe                 # GTK based Image viewer
  less                  # Pager program similar to more
  man                   # Utility to display the on-line manual pages
  nautilus              # GTK based File browser
  ntfs-3g               # NTFS filesystem driver and utilities
  power-profiles-daemon # Makes power profiles handling available over D-Bus
  pwgen                 # Password generator
  reflector             # Script to retrieve and filter the latest Pacman mirror list
  sbctl                 # Secure Boot key manager
  tree                  # Command to produce a depth indented directory listing
  ufw                   # Uncomplicated Firewall
  uv                    # An extremely fast Python package and project manager, written in Rust
  gnome-disk-utility    # Graphical disk and partition manager
  baobab                # Graphical disk usage analyzer
  pavucontrol           # PulseAudio Volume Control application
  gamescope             # SteamOS session compositing window manager
  steam                 # Valve's digital software distribution platform
  tmux                  # A terminal multiplexer
)

LAZYVIM_DEPS=(
  curl     # Command line tool for transferring data with URLs
  fd       # A simple, fast and user-friendly alternative to 'find'
  fzf      # A general-purpose command-line fuzzy finder
  gcc      # The GNU Compiler Collection
  luarocks # Package manager for the Lua programming language
  make     # GNU make utility to maintain groups of programs
  neovim   # Hyper-extensible Vim-based text editor
  ripgrep  # Line-oriented search tool that recursively searches directories
  unzip    # Utility to unpack zip archives
)

AUR_PACKAGES=(
  nmgui-bin                  # A Network Manager gtk4 GUI tool
  morewaita-icon-theme       # A comprehensive flat icon theme style
  nautilus-open-any-terminal # Extension for nautilus, which allow opening alacritty from nautilus
  xdg-terminal-exec          # Default Terminal Execution Specification implementation
  swaylock-effects           # A suggested Wayland screen locker
  ttf-icomoon-feather-git    # Icomoon and Feather font icons (temporary for old waybar config)
)

FLATPAK_PACKAGES=(
  org.kde.okular              # Document viewer (PDF, EPub, etc.)
  org.telegram.desktop        # Official Telegram Messenger Desktop Client
  org.libreoffice.LibreOffice # A powerful, open-source local office productivity suite
  org.videolan.VLC            # Multimedia player for various audio and video formats
  com.obsproject.Studio       # FOSS for live streaming and screen recording
)
