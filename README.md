# mac-snippets

```
curl https://raw.githubusercontent.com/fasuke85/mac-snippets/master/install.sh | sh
```

To fix fonts: Terminal -> Preferences -> Profiles -> Text -> Change Font to Hack Nerd Font


## Bash scripts
- `mkdir bin`
- In .zshrc: `export PATH=$PATH:/Users/<username>/bin`
- First line in script: `#!/bin/bash`
- Make executable: `chmod u+x <script>`

## Copy from terminal
```
pwd | pbcopy
pbcopy < file.txt
```

## sudo with touch id
- `sudo nano /etc/pam.d/sudo`
- add to the top: `auth sufficient pam_tid.so` 

## Visudo
-  `sudo visudo -f /etc/sudoers`
- Add line: `%admin  ALL=(ALL) NOPASSWD: /usr/local/bin/<command>` 
