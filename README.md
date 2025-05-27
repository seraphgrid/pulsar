# Pulsar
🚀 PULSAR - Scripts To Open Files, Manpages And More.



https://github.com/user-attachments/assets/bf330a6d-5ab9-46c6-8389-781a1319c369



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
| pulsar-manpages     | View manpages without using terminal. |
| pulsar-list         | Helper script to make other script work (like pulsar-files). |
| pulsar-websearch    | Search using selected search engine url. |
| pulsar-keybindings  | Quickly see keybindings for apps. |
| pulsar-webbookmarks | Open the selected in you favourite browser. |
| pulsar-notes        | Copy or edit text content of the selected note. (usefull for snippets and templates) |

# Support.

I am born dyslexic and mentally ill, it took a lot of effort to make this project.  

- The future changes can break your config.
- Scirpts that start's with `t` can be opened using terminal.
- All of the scripts can be configured through config files in `configs`.

# Installation

Copy the configs for scripts to .config folder.

```bash
cp -r configs $HOME/.config/pulsar
```

Link all pulsar scripts to path using command.
```bash
sudo ln -sr scripts/pulsar-scripts/pulsar-* /usr/local/bin/
```

Link all tpulsar scripts to path using command
```bash
sudo ln -sr scripts/tpulsar-scripts/tpulsar-* /usr/local/bin/
```

Link `xclip-file-copy` script (used in `pulsar-notes`) to path using command.
```bash
sudo ln -sr scripts/xclip-file-copy /usr/local/bin/
```

Link `xdotool-type-file` script (used in `pulsar-notes`) to path using command.
```bash
sudo ln -sr scripts/xdotool-type-file /usr/local/bin/
```

Link `xclip-copy` script (used in global openers) to path using command.
```bash
sudo ln -sr scripts/xclip-copy /usr/local/bin/
```

After installation, start sxhkd using command.
```bash
sxhkd -c your_existing_sxhkdrc -c $HOME/.config/pulsar/pulsar-sxhkdrc
```

**Customize the config files according to your needs (important!)**

# Requirements

- `fzf` for tpulsar scripts (can be changed in `tpulsar.conf`).
- `dmenu` for pulsar scripts (can be changed in `pulsar.conf`).
- `xclip` for `xclip-file-copy` script (optional).
- `xdotool` for `xdotool-type-file` script (optional).
- `sxhkd` for keybindings (optional).

# Development

- Editor should be vscode (word-wrap disabled and tab -> 4 spaces).
- Recommended vscode extension is `ANSI Decorator`.
- If you have dyslexia then font `Cascadia Code` and high contrast dark theme will help (Github-Dark-Default is nice).

# Todos (complete)

- [X] Sxhkd keybindings.
- [X] Prompt to show the notes.
- [X] Prompt to open web bookmarks.
- [X] Option to disable hidden files.
- [X] Script to list and open manpages.
- [X] Prompt to show templates of code.
- [X] Script to that holds list of keybindings.
- [X] Script to search using specific search engine.
- [X] Script that takes file with list and open's the specific list item.

# Todos (incomplete)

- [ ] Font icons support.
- [ ] Script to randomly select from directory.
- [ ] Prompt that lists the installed packages.
- [ ] Menu that holds commonly used commands (`shutdown`, `reboot`).
