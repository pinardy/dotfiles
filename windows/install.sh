dir=~/dotfiles
files=".aliases .bash_profile .bashrc .bash_prompt .vimrc .inputrc"

echo "=== SYMLINKS ==="
echo

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

# VSCode settings
vscodeDir=~/AppData/Roaming/Code/User
keybindingsFile=keybindings.json
snippetsFile=snippets.json

if [ -d "$vscodeDir" ]; then
    echo
    echo "=== VSCode ==="
    echo

    cp "$dir/$keybindingsFile" "$vscodeDir/$keybindingsFile"
    echo "Copying $keybindingsFile to VSCode settings directory."

    cp "$dir/$snippetsFile" "$vscodeDir/snippets/snippets.code-snippets"
    echo "Copying $snippetsFile to VSCode settings directory."
fi
