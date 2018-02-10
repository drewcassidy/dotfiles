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

set fish_color_autosuggestion 'brblack'
set fish_color_cancel -r
set fish_color_command --bold
set fish_color_comment red
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end brmagenta
set fish_color_error brred
set fish_color_escape 'bryellow'  '--bold'
set fish_color_history_current --bold
set fish_color_host normal
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator bryellow
set fish_color_param cyan
set fish_color_quote yellow
set fish_color_redirection brblue
set fish_color_search_match 'bryellow'  '--background=brblack'
set fish_color_selection 'white'  '--bold'  '--background=brblack'
set fish_color_user brgreen
set fish_color_valid_path --underline

