docker_installed="$(command -v docker)"

export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_THEME="avit"

# add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# add adb
export PATH="$PATH:/home/julio/Library/Android/sdk/platform-tools/"
export ANDROID_SDK_ROOT="/home/julio/Library/Android/sdk"

# export aapt home
AAPT_HOME="/home/julio/Library/Android/sdk/build-tools/30.0.3"
export PATH="$PATH:/home/julio/Library/Android/sdk/build-tools/30.0.3"

# aws-vault
export PATH="$PATH:/opt/homebrew/bin/aws-vault"

# custom alias
if [ $docker_installed ]; then
    alias docker-nuke="docker stop $(docker ps -q); docker system prune --all --volumes"
fi

# reverse Docker images into Dockerfiles usage: dfimage -sV=1.36 <image>
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage" 

# git
alias git-hash="git log --format=%H"
alias gst="git status"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# list adb-apps
alias adb_apps="adb root; adb shell ls /data/data/"
alias no_root_adb_apps="adb shell pm list packages"

# nano zprofile
alias zprofile="nano /home/julio/.zprofile"
alias zshrc="nano /home/julio/.zshrc"


# export promo-scraper
export PATH="$PATH:~/.config/wtf/promo_scraper.sh"
export PATH="$PATH:/home/julio/.config/wtf/"

# open macos like
alias open="xdg-open"

# plugins
plugins=(
    copyfile
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)


export ZSH="/home/juliobonon/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# pycharm command-line launcher alias (when installing via snap)
alias charm="pycharm-community"


# virtualenv
export WORKON_HOME=$HOME/.virtualenvsexport
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh



