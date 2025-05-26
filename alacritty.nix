{config, pkgs, ...}:
{
  home.file = {
    ".config/alacritty/alacritty.toml" = {
    text = ''
# Adaptation of WezTerm colors to Alacritty (Dark Theme)

#   __________________
# |-- Sakura Theme --|

# [[colors.indexed_colors]]
# index = 16
# color = "#9e97d0" # ca: purple
#
# [[colors.indexed_colors]]
# index = 17
# color = "#c58ea7" # ia: pink
#
# [colors.bright]
# black = "#3f3b3e"   # gr: dark gray
# blue = "#665E7A"    # vb: dark blue
# cyan = "#c58ea7"    # ia: cyan (pink)
# green = "#878fb9"   # va: green (blue)
# magenta = "#9e97d0" # ca: magenta
# red = "#c58ea7"     # ia: red
# white = "#c5a3a9"   # na: white
# yellow = "#9e97d0"  # ca: yellow (purple)
#
# [colors.cursor]
# cursor = "#9e97d0" # ca: purple
# text = "#c5a3a9"   # na: text
#
# [colors.normal]
# black = "#1c1a1c"   # bl: black background
# blue = "#665E7A"    # vb: dark blue
# cyan = "#c58ea7"    # ia: cyan (pink)
# green = "#878fb9"   # va: green (blue)
# magenta = "#9e97d0" # ca: magenta
# red = "#c58ea7"     # ia: red
# white = "#c5a3a9"   # na: light text
# yellow = "#9e97d0"  # ca: yellow (purple)
#
# [colors.primary]
# background = "#1c1a1c" # bl: background
# foreground = "#786577" # na: text
#
# [colors.selection]
# background = "#3f3b3e" # gr: gray
# text = "#c5a3a9"       # na: text

#   ________________________________
# |-- Kanagawa Wave Theme Colors --|

# [colors.primary]
# background = "#1F1F28" # winterBlue
# foreground = "#DCD7BA" # fujiWhite
#
# [colors.cursor]
# cursor = "#7FB4CA" # waveAqua2
# text = "#1F1F28"   # winterBlue (contrast for cursor)
#
# [colors.selection]
# background = "#223249" # waveBlue2
# text = "#DCD7BA"       # fujiWhite
#
# [colors.normal]
# black = "#1F1F28"   # winterBlue
# red = "#E46876"     # waveRed
# green = "#98BB6C"   # waveGreen
# yellow = "#DCD478"  # waveYellow
# blue = "#7FB4CA"    # waveAqua2
# magenta = "#957FB8" # wavePurple
# cyan = "#6A9589"    # waveAqua1
# white = "#DCD7BA"   # fujiWhite
#
# [colors.bright]
# black = "#2D4F67"   # waveBlue1 (brighter black)
# red = "#E46876"     # waveRed
# green = "#98BB6C"   # waveGreen
# yellow = "#DCD478"  # waveYellow
# blue = "#7FB4CA"    # waveAqua2
# magenta = "#957FB8" # wavePurple
# cyan = "#6A9589"    # waveAqua1
# white = "#C8C093"   # oldWhite (brighter white)
#
# [[colors.indexed_colors]]
# index = 16
# color = "#FFA066" # waveOrange
#
# [[colors.indexed_colors]]
# index = 17
# color = "#2D4F67" # waveBlue1 (using as an additional distinct color)
#
#  __________________
# |-- Vesper Theme --|
# 
# [colors.primary]
# background = '#101010'
# foreground = '#ffffff'
#
# [colors.normal]
# black = '#101010'
# red = '#f5a191'
# green = '#90b99f'
# yellow = '#e6b99d'
# blue = '#aca1cf'
# magenta = '#e29eca'
# cyan = '#ea83a5'
# white = '#a0a0a0'
#
# [colors.bright]
# black = '#7e7e7e'
# red = '#ff8080'
# green = '#99ffe4'
# yellow = '#ffc799'
# blue = '#b9aeda'
# magenta = '#ecaad6'
# cyan = '#f591b2'
# white = '#ffffff'

#  ____________________
# |-- OldWorld Theme --|

[colors.primary]
background = '#161617'
foreground = '#c9c7cd'

[colors.normal]
black = '#101010'
red = '#EA83A5'
green = '#90b99F'
yellow = '#e6b99d'
blue = '#85b5ba'
magenta = '#92a2d5'
cyan = "#85B5BA"
white = '#c9c7cd'

[colors.bright]
black = '#989a97'
red = '#EA83A5'
green = '#90b99F'
yellow = '#e6b99d'
blue = '#85b5ba'
magenta = '#92a2d5'
cyan = "#85B5BA"
white = '#c9c7cd'

[cursor]
style = "Block"
unfocused_hollow = true

[font]
size = 16

[font.normal]
family = "JetBrains Mono Nerd Font"

[window.dimensions]
columns = 130
lines = 30

[window]
option_as_alt = "Both"

[env]
TERM = "xterm-256color"
        '';

   };
  };
}
