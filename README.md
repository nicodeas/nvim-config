# Neovim Config Files

On installation, run `:checkhealth` to ensure that everything is working.

---

## Dependencies

- Install xclip if no clip board found

- For Telescope's fuzzy finding, [Ripgrep](https://github.com/BurntSushi/ripgrep).

- For better Telescpe performance, use native [fzf](https://github.com/junegunn/fzf)

- For built in git UI, [lazygit](https://github.com/jesseduffield/lazygit).

- A terminal that supports ligatures

- A Nerdfont, reccomend using MesloLGS NF

## Path variables

- Ensure Node has been installed and available in path, this is required even if you are not using node as it is possible that node is a sub dependency. You should do this by installing node with NVM. You may run into the problem where it is not in your path; this can be fixed by modifying your `.zshrc` or `.bashrc`.

- Run `yarn global add neovim`
- Run `pip3 install neovim`

## Possible errors

To diagnose, run `:checkhealth`

- Highlighting or illumination errors, likely a treesitter error, run `TSUpdate {language you want to install}`
