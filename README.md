# minimap_on
A [Luanti](https://www.luanti.org/) client-side mod enabling you to automatically activate the minimap with your preferred configuration, saving you a few key strokes at the beginning of each game...

## Features
* Fully configurable with Luanti User Interface

## Installation
1. Manually download the [latest release](https://github.com/HubTou/minimap_on/releases) of this mod (as client-side mods download is not handled yet through Luanti's User Interface)
2. Follow general instructions on [client-side mods installation](https://wiki.minetest.net/Installing_Client-Side_Mods):

   * Put the following line in *luanti/minetest.conf* to enable client-side mods (if not already done):
      ```
      enable_client_modding = true
      ```
      
   * Unpack the mod archive in *luanti/clientmods*
   * Rename the mod directory to *luanti/clientmods/minimap_on*
   * Put the following line in *luanti/clientmods/mods.conf*:
      ```
      load_mod_minimap_on = true
      ```

Note: If you haven't upgraded yet to luanti 5.10.0 or newer, your *luanti* directory will be called *minetest*...

## Configuration
Before launching a game, configure the mod options through Luanti's User Interface:
![Configuration in UI](https://github.com/HubTou/minimap_on/blob/main/screenshots/config.png)

You can select the mode of the minimap:
* 0 for a hidden minimap (no need to use this mod then!)
* 1-3 for a surface minimap with an increasing level of zoom
* 4-6 for an underground (radar) minimap with an increasing level of zoom 

You can also select the shape of the minimap:
* square
* or round

## Possible future directions
Apart from grouping all my client-side mods in a future "comfort" modpack, I think this one will stay as is.

However, it would be possible to configure the minimap position on the screen and its size.

In fact this mod started as a "maximap" experiment, but the minimap HUD API does not allow expanded in-game maps, but rather minimaps with increased zoom level (it can even be fullscreen, but then it's peculiarly ugly!).

Go to [Discussions](https://github.com/HubTou/minimap_on/discussions) if you want to suggest other things...
