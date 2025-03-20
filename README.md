# Dotfiles
Configuration directory managed with [GNU Stow](https://www.gnu.org/software/stow/).
## Instructions to symlink any configuration files
- Within the `Dotfiles` directory you run `stow <whatever directory>`.
- This will make a symbolic link into whatever directory structure you have set up.
- Done.
## Examples
### XDG compliant configuration
- Neovim's configuration is in the top level directory `nvim`.
- The `nvim` directory has the directories `.config/nvim` this specifies the path where I will have my configuration.
- Running `stow nvim` will create a symbolic link pointing to the `nvim` directory which is accessible from `~/.config/nvim/`
### Non-XDG compliant configuration
- Bash's configuration is stored directly in the user's home directory.
- The `bash` directory simply has all the bash configuration in there, for instance the `.bashrc` file.
- Running `stow bash` will make a symlink pointing, for instance, to `bash/.bashrc` and is accessible from `~/.bashrc`
