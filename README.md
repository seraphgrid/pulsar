# Pulsar
🚀 PULSAR - Scripts To Open Files, Manpages And More.

| SCRIPT              | DESCRIPTION                   |
| ------------------- | ----------------------------- |
| pulsar-files        | Script is customisible through config files (most script are created using this). |
| pulsar-applications | Launch applications on quickly. |
| pulsar-documents    | Open documents without using any file manager. |
| pulsar-music        | Open music file with light speed. |
| pulsar-pictures     | Open your pics in ~/Pictures folder (this can be customized through config). |
| pulsar-projects     | Open your project with selected editor. |
| pulsar-sources      | Open your sources for different outside projects (cloned from git, etc). |
| pulsar-videos       | Open your videos with speed of the antimatter ship. |
| pulsar-wallpapers   | Set or view wallpaper quickly. |
| pulsar-xresources   | Parse the selected xresources file (can be usefull when changing theme of awesomewm, terminal or others). |
| pulsar-manpages     | View manpages without using terminal |

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
- After installation, start sxhkd using command `sxhkd -c your_existing_sxhkdrc $HOME/.config/pulsar/pulsar-sxhkdrc`

# Requirements

- `fzf` for tpulsar scripts (can be changed in `tpulsar.conf`).
- `dmenu` for pulsar scripts (can be changed in `pulsar.conf`).

# Todos

- [X] Sxhkd keybindings.
- [ ] Font icons support.
- [X] Option to disable hidden files.
- [X] Script to list and open manpages.
- [ ] Script to that holds list of keybindings.
- [ ] Script to search using specific search engine.
- [ ] Script that takes file with list and open's the specific list item.
