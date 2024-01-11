HOME_PATH=/home/juliobonon/

# zsh plugins
SYNTAX_HIGHLIGHT_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
AUTO_SUGGESTIONS_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

if ! [ -d "$SYNTAX_HIGHLIGHT_PATH" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $SYNTAX_HIGHLIGHT_PATH 
fi

if ! [ -d "$AUTO_SUGGESTIONS_PATH" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $AUTO_SUGGESTIONS_PATH 
fi

if ! [ -d "$K_PATH" ]; then
    git clone https://github.com/supercrabtree/k $K_PATH
fi

# python packages

sudo apt update
sudo apt install -y python3-pip

if ! [ "$(pip list | grep virtualenvwrapper | wc -c)" -eq 0 ]; then
    echo "virtualenvwrapper is already installed"
else
    pip3 install virtualenvwrapper
fi

# rust

if [ -f "${HOME_PATH}/.cargo/bin/rustc" ]; then
    echo "Rust is already installed"
else
    curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
fi