# DevilutionX (Diablo 1) for MiyooCFW

## Installation

1. Install the MiyooCFW from https://github.com/TriForceX/MiyooCFW/releases
2. Copy `devilutionx.ipk` to the `/mnt/pkgs` directory.
3. Unpack and minify all the MPQ contents (diabdat.mpq or spawn.mpq) using `unpack_and_minify` from https://github.com/diasurgical/devilutionx-mpq-tools/.
4. Copy the resulting directories to:

   ~~~
   /mnt/games/devilutionx/
   ~~~

## Controls

- D-pad: move hero
- A: attack nearby enemies, talk to townspeople and merchants, pickup/place items in the inventory, OK while in main menu
- B: select spell, back while in menus
- X: pickup items, open nearby chests and doors, use item in the inventory, delete character while in main menu
- Y: cast spell, OK while in dialog
- R: use mana potion from belt
- L: use health item from belt
- Start + Select: game menu (alt: Start + ↑)
- Start + L or ←: character info
- Start + R or →: inventory
- Start + ↓: map
- Start + Y: Quest log
- Start + B: Spell book
- Select + A/B/X/Y: hot spell
- Select + D-pad: move map/cursor
- Select + L: left mouse click
- Select + R: right mouse click
- Suspend: map

---

Game saves and `diablo.ini` are located at:

~~~
/mnt/.local/share/diasurgical/devilution/
~~~

Saves are compatible with PC saves from Diablo 1 and DevilutionX.
