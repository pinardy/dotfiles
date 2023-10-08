# Dotfiles

> My dotfiles for Windows with [Git Bash](https://git-scm.com/downloads) and [Windows Terminal](https://github.com/microsoft/terminal).

## Windows

### Features

- Custom keybindings for Windows Terminal (following browser hotkeys)
- VSCode code snippets and keybindings
- Designed to work for airgap environments (does not require internet connection)

![Screenshot](https://raw.githubusercontent.com/pinardy/dotfiles/main/images/windows-terminal.PNG)

### Installation

- Clone the repository - `git clone https://github.com/pinardy/dotfiles.git`
- Create a new folder in `~/dotfiles`
- Copy the contents of the `windows` folder to your local `~/dotfiles`
- `cd ~/dotfiles`
- `./install.sh`

## MacOS

Referenced from https://github.com/holman/dotfiles/tree/master

### Features

- Aliases for docker, git
- Colour themes for command line

There's a few special files in the hierarchy.

- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

### Installation

- Clone the repository - `git clone https://github.com/holman/dotfiles.git`
- Create a new folder in `~/.dotfiles`
- Copy the contents of the `macos` folder to your local `~/.dotfiles`
- `cd ~/.dotfiles`
- `script/bootstrap`

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.
