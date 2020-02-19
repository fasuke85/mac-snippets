#-------------------------
#        Homebrew
#-------------------------

if ! [ "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#-------------------------
#        .zshrc
#-------------------------

FILE=~/.zshrc
if test -f "$FILE"; 
  then
    echo "$FILE exist"
  else
    echo "creates $FILE" 
    touch $FILE
fi

#-------------------------
#         Nano
#-------------------------

brew install nano

# syntax highlighting
brew install wget
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# set nano as default editor
if grep -q "EDITOR" ~/.zshrc; 
  then
    echo "zshrc already updated"
  else
    echo "\n" >> ~/.zshrc
    echo "export EDITOR=/usr/local/bin/nano" >> ~/.zshrc
    echo "export VISUAL=/usr/local/bin/nano" >> ~/.zshrc
fi