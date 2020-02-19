brew install nano
brew install wget

curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

if grep -q "EDITOR" ~/.zshrc; 
  then
    echo "zshrc already updated"
  else
    echo "\n" >> ~/.zshrc
    echo "export EDITOR=/usr/local/bin/nano" >> ~/.zshrc
    echo "export VISUAL=/usr/local/bin/nano" >> ~/.zshrc
fi
