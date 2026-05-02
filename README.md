Pikmeep is a Fuzzy package search for PikaOS. Type what you're looking for, pick it, install it.

It is built for PikaOS but works on any Debian-based system with pikman and fzf.

---

## Install

**Option 1 — one-liner (recommended):**

```bash
curl -fsSL https://raw.githubusercontent.com/Silkvain/pikmeep/main/install.sh | bash
```

**Option 2 — download and run manually:**

Download the zip, extract it, then open a terminal in the folder where the files extracted and run:

```bash
bash install.sh
```

That's it. The installer will set everything up, including installing fzf if you don't have it.

## Usage

```bash
pikmeep
```

1. Pick a source — APT, Flatpak, or AUR
2. Start typing to filter packages by name or description
3. Use arrow keys to browse, `tab` to select multiple packages
4. Hit `Enter` when you've made your selection
5. Review the confirm screen and press `y` to install

## Tips

- `alt-p` toggles the package info preview panel
- You can select multiple packages with `tab` before hitting `Enter`
- AUR search queries the AUR API live, sorted by community votes
- APT and Flatpak load the full package list — no search term needed, just start typing

## Why separate sources?

pikman can install from APT, Flatpak, and AUR — but each source is its own ecosystem with different tradeoffs. Keeping them separate means you stay conscious about where a package is coming from. Generally: APT first (native), Flatpak if it's not there, AUR as a last resort.

## Dependencies

- [pikman](https://wiki.pika-os.com/en/custom-utils-wiki/pikman-manager-cli) — comes pre-installed on PikaOS
- [fzf](https://github.com/junegunn/fzf) — pikmeep installs this automatically if missing
- `python3` — for AUR search (pre-installed on PikaOS)

Inspired by the package installer in [Omarchy](https://omarchy.org).

MIT License
