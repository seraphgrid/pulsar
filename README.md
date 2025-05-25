# Pulsar
🚀 PULSAR - Scripts To Open Files, Manpages And More.

| SCRIPT             | DESCRIPTION                   |
| ------------------ | ----------------------------- |
| dmenu-files        | Script is customisible through config files (most script are created using this). |
| dmenu-applications | Launch applications on quickly. |
| dmenu-documents    | Open documents without using any file manager. |
| dmenu-music        | Open music file with light speed. |
| dmenu-pictures     | Open your pics in ~/Pictures folder (this can be customized through config). |
| dmenu-projects     | Open your project with selected editor. |
| dmenu-sources      | Open your sources for different outside projects (cloned from git, etc). |
| dmenu-videos       | Open your videos with speed of the antimatter ship. |
| dmenu-wallpapers   | Set or view wallpaper quickly. |
| dmenu-xresources   | Parse the selected xresources file (can be usefull when changing theme of awesomewm, terminal or others. |

# Support.

I am born dyslexic and mentally ill, it took a lot of effort to make this project.  
Please donate me at: [https://www.paypal.me/alexthegreat600]  
Please contribute to this project, it can't be done without your help.

- The future changes can break your config.
- Scirpts that start's with `t` can be opened using terminal.
- All of the scripts can be configured through config files in `configs`.

# Installation

- Copy the configs for scripts to .config folder `cp -r configs $HOME/.config/pulsar`
- Link all pulsar scripts to path using command `sudo ln -sr pulsar-* /usr/local/bin/`
- Link all tpulsar scripts to path using command `sudo ln -sr tpulsar-* /usr/local/bin/`

# Requirements

- `fzf` for tpulsar scripts (can be changed in `tpulsar.conf`).
- `dmenu` for pulsar scripts (can be changed in `pulsar.conf`).

# Todos

- [ ] Sxhkd keybindings.
- [ ] Font icons support.
- [ ] Option to disable hidden files.
- [ ] Script to list and open manpages.
- [ ] Script to that holds list of keybindings.
- [ ] Script to search using specific search engine.
- [ ] Script that takes file with list and open's the specific list item.
