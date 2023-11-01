# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# theme of zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="steeef"

# hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# alias_file
source $HOME/.zsh_alias

# 日本語ファイル名の表示
setopt print_eight_bit
