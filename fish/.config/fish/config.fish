# setup location variables
set FISH_PATH  "$HOME/.config/fish"
set FLINE_PATH "$FISH_PATH/fishline"

set -gx PATH /usr/local/opt/curl/bin $PATH
set -gx PATH /usr/local/opt/openssl/bin $PATH
set -gx PATH ~/Library/Python/2.7/bin $PATH

set -gx PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig $PKG_CONFIG_PATH

# setup FishLine
source $FLINE_PATH/init.fish
source $FISH_PATH/fishline_colors.fish
set FLCLR_USER_BG           blue
set FLCLR_USER_FG           white

# setup colors
set -gx GCC_COLORS 'error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
set -gx CLICOLOR 1
set -gx LSCOLORS 'ExcxdxfxgxxexcxdxfBxBx'
