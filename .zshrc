export ZSH="$HOME/.oh-my-zsh"
export XDG_PICTURES_DIR="$HOME/Pictures"
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"

source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

# update automatically without asking
zstyle ':omz:update' mode auto 
      
bindkey -v

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

ZSH_THEME="robbyrussell"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# Start Hyrpland automatically
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
