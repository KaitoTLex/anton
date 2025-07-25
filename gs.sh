gamescopeArgs=(
    --adaptive-sync # VRR support
    --hdr-enabled
    --mangoapp # performance overlay
    --rt
    --steam
)
steamArgs=(
    -pipewire-dmabuf
    -tenfoot
)
exec gamescope "${gamescopeArgs[@]}" -- steam "${steamArgs[@]}"
