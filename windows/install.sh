dir=~/dotfiles
files=".aliases .bash_profile .bashrc .bash_prompt .vimrc .inputrc"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -sf "$dir/$file" ~/$file
done

# Windows Terminal settings
terminalDir=~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe

if [ -d "$terminalDir" ]; then
    cp ./windows-terminal-settings.json "$terminalDir/LocalState/settings.json"
    cp ./git-bash.ico "$terminalDir/RoamingState"
    cp ./ubuntu.ico "$terminalDir/RoamingState"
fi
