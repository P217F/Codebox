## Fixing brightnessctl on hyprland

Are you using arch linux + hyprland? And do you have an error that cannot adjust the brightness of the screen. To fix it, we need the following:  
1. Identify the graphics cards in the machine.  
2. Choose only 1 graphics card for hyprland. It is recommended that if you have a dGPU, use it because Hyprland does not use as many GPUs as you think.  

## If you using iGPU Intel

```
sudo pacman -Syu && sudo pacman -S mesa vulkan-intel libva-intel-driver libva-utils intel-media-driver
```
Note: On new iGPUs (Skylake+), use intel-media-driver and remove libva-intel-driver if conflicts occur.  

## If you using iGPU AMD

```
sudo pacman -Syu && sudo pacman -S mesa vulkan-radeon libva-mesa-driver libva-utils
```
Note: The amdgpu driver is automatically loaded by the kernel if the GPU supports it (GCN 1.2+). No need to install xf86-video-amdgpu on Wayland.