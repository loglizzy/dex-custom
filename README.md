## about
* changed icons
* 3 color themes
* higher icons quality (64p) (original dex icons are 16p)
* same or better performance

## using
just execute this code and change the theme if you want
```lua
Icon_Color_Theme = 'Graphite'

-- Themes:
--   Graphite (dark)
--   Platinium (light)
--   White (full white icons)

shared['391D941U3418SK'],shared['IDFI139F4O312'] = Icon_Color_Theme,'8187023605'
loadstring(game:HttpGet('https://raw.githubusercontent.com/loglizzy/dex-custom/main/loaders/darkdex.lua'))()
```

## aditional changes
* Cleans old memory when executing a new instance
* Disabled AutoLocalize, that was translating objects names
