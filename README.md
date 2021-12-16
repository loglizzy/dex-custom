## about
* changed icons
* 3 color themes
* higher icons quality (64p) (original dex icons are 16p)
* same or better performance

## using
just execute this code and change the theme if you want
```lua
Icon_Color_Theme = "Graphite"

-- Themes:
--   "Graphite" (dark)
--   "Platinum" (light)
--   "White" (full white icons)

shared['L91D941U3418SL'],shared['ODFI139F4O312I'] = Icon_Color_Theme,'8262659171'
loadstring(game:HttpGet('https://raw.githubusercontent.com/loglizzy/dex-custom/main/loaders/darkdex.lua'))()
```

## aditional changes
* Cleans old memory when executing a new instance
* Disabled AutoLocalize, that was translating objects names
