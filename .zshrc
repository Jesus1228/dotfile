#neofetch
#screenfetch

# Path to your oh-my-zsh installation.
export ZSH="/home/chuyx/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:"/home/chuyx/.local/bin"

ZSH_THEME="spaceship"

SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=green
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_COLOR=blue
SPACESHIP_DIR_COLOR=#ff8700
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_CHAR_COLOR_SUCCESS=green
SPACESHIP_VENV_SYMBOL=' '
SPACESHIP_VENV_COLOR=magenta
# SPACESHIP_PROMPT_ORDER=(
#   time          # Time stamps section
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   pyenv         # Pyenv section
# )
# Ranger variables
RANGER_LOAD_DEFAULT_RC=FALSE


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.

# For a full list of active aliases, run `alias`.
alias tree="tree -C"
alias sf="screenfetch"
alias l='lsd'
alias la='lsd -A'
alias ll='lsd -lA'
alias lt='lsd --tree'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
