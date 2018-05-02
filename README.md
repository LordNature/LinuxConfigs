# .files
These are my configuration files for my Linux setup.
The configuration files will work on any distribution; however, there is a bootstrap file that only works on `VOID LINUX GLIB`.
The bootstrap file installs a suite of programs and does not give any prompts to choose otherwise as it is mainly for personal use.
If you wish to utilize the bootstrap file, the commands are quite simple to change.

## .my-info
**distro:** Void Linux *glibc*
**wm:** i3-gaps
**terminal:** st + zsh
**font:** tewi2a
**editor:** vim & atom
**color-scheme:** Nord
**notifications:** dunst
**web:** firefox *alt: qutebrowser/chromium*
**launcher:** dmenu

## .installer
The bootstrap file installs the following:
```
i3-gaps or BSPWM (Going to try BSPWM in a bit)
polybar
ncmpcpp
vim
R (rmarkdown baby)
texlive (NON-DISTRO PROVIDED)
unclutter
dmenu (Used to rofi, but I like the unix philosophy of suckless; plus it goes over polybar)
tewi-font
```
Ranger, with w3m image previewer (to-do)
ST (my terminal) is not provided due to the necessity of requiring a custom build.
I'll probably finish it later.
Probably others, repo is not even working so *shrug*

## .references
st build provided by Luke Smith
everything else is pretty much documentation and examples
