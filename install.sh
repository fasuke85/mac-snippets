#-------------------------
#        Utils
#-------------------------

ZSHRC=~/.zshrc

function addToZshrc {
  if grep -q $1 $ZSHRC; 
  then
      echo "$1 already added"
  else
      echo $2 >> $ZSHRC
  fi    
}

#-------------------------
#        Homebrew
#-------------------------

if ! [ "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#-------------------------
#        .zshrc
#-------------------------

ZSHRC=~/.zshrc
if test -f "$ZSHRC"; 
  then
    echo "$ZSHRC exist"
  else
    echo "creates $ZSHRC" 
    touch $ZSHRC
fi

brew tap sambadevi/powerlevel9k
brew install powerlevel9k
addToZshrc "powerlevel9k" "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme"

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
# Terminal -> Preferences -> Profiles -> Text -> Change Font to Hack Nerd Font

#-------------------------
#         Git
#-------------------------
brew install git


# Git completion
mkdir -p ~/.bar

curl -o ~/.bar/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/.bar/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

COMPLETION="
\n# Load Git completion
\nzstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
\nfpath=(~/.zsh $fpath)
\nautoload -Uz compinit && compinit"

addToZshrc "~/.zsh/git-completion.bash" "$COMPLETION"


#-------------------------
#         Nano
#-------------------------

brew install nano

# syntax highlighting
brew install wget
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# set nano as default editor
NANO="
\nexport EDITOR=/usr/local/bin/nano
\nexport VISUAL=/usr/local/bin/nano"

addToZshrc "EDITOR" "$NANO"
