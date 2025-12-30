# Clean Output ISO
# SAFE cleanup - removes archiso and pacman temp files
sudo rm -rf /tmp/archiso-tmp* /tmp/pacman.conf.* /tmp/iso.pacman.conf*

# Also clean sddm temp files (they're safe to remove)
sudo rm -rf /tmp/sddm--* /tmp/sddm-auth-*

# Clean wl-copy buffers (clipboard temporary files)
rm -rf /tmp/wl-copy-buffer-*

# Clean nvim swap files
rm -rf /tmp/nvim*

# Check space after cleaning
df -h /tmp

# Build the ISO (takes 10-20 minutes)
sudo mkarchiso -v -r -w /tmp/archiso-tmp -o ./output ./
