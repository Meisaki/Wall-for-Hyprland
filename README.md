# Wall-for-Hyprland
This Script Is Tweaked By Me If you have Problem using it just T_ASK  

I used a Standard Script edit as  swww to run set wallpaper as V1 but after that i create V2 to loop wallpapers without any time specify so i create V3 it was my need and i was stop there but i thought its loop but not resuming the loop rather starting again so at last i create save state (index fail) so that it read save state to resume loop from there it is v4 at last why name not decimal like 1.1 to 1.4 name is not my cup of tea so be as  may

Now i Was curious to create if i create Daemon with this script i Succesfully create a service but after so many tweak in service and countless reboot i conclude that its just not worth it how you will say because it will start but some time it only works for 5 reboot then its gone and when you increase sleep  it might work but ain't worth as it start like 30s after system greet same can be done by changing sleep in script and then execute same effect so my time was waste nope i learn something about services atleast i will give you reason why less sleep will not work on daemon because swww is graphical target or maybe execution  as if your graphical dependencies or as long as swww is not satisfied it will not work that why it need more than 15s(in my case) to run which sum up to 30-45s somehow    

## Install swww
Arch
```
sudo pacman -S swww
```
### Install Dependencies
(lz4,xdg-output and wlr-shell layer which mostly exist wayland based compositor like Hyprland,qtile)
```
sudo pacman -S lz4 xdg-output
```
You are ready to go now But if you need tool to resize gif see gifiscle (I know its like unmaintained but worth shot)
```
sudo pacman -S gifsicle
```
### Checking

simply run script if its working replace `anything.sh` by `your_name.sh`
```
./anything.zsh 
```
If its work then continue reading so that you will learn some part of the Script(if not then you what to do)

### Tweaks

1) This will `SWWW_EXECUTABLE=/usr/bin/swww` be your typical loaction of swww if not try `where swww` replace if need to 

2) This will `WALLPAPER_DIR="/path/to/your"` be wallpaper home replace `"/path/to/your"` with your wallpaper directory

3) This `"$SWWW_EXECUTABLE" init` as you see its command `swww init` 

Note: keep it eye on 1

4) This `sleep 1` is command use to delay a command or here daemon put any value you want 

5) This `STATE_FILE="$HOME/.cache/swww/wallpaper_state.txt"` might not exist you have to create if not exist 

Note:- 1 and 3 are something keep eye on them

6) This `sleep 30` is command is special it used as timer for next wallpaper

### Some Info

If you really not want to loop you can remove loop and modify,execute as swww to wallpaper not directory 

in 5th the file can be exist also or not but remember its important to have because it will read that Wallpaper index to resume it loop rather than start from start 

in 6th 30 second mean wallpaper change at 30s per wallpaper you can edit into as your desired time

and last but not least hyprland.conf exist so you know what you have to do i cannot ok 

(THANKS TO Horus645 as swww)



