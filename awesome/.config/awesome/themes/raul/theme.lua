--[[

	Theme by Ruslan Anufriev

--]]

----------------------------------------------------------------------------------------------------
--- Imports ---
----------------------------------------------------------------------------------------------------
-- local dpi   = require("beautiful.xresources").apply_dpi
-- local lain  = require("lain")

----------------------------------------------------------------------------------------------------
--- Palete --- TODO: move to external package
----------------------------------------------------------------------------------------------------
local color         = {}

color.teal          = {}
color.teal.normal   = "#009688"
color.teal.lighten1 = "#26A69A"
color.teal.lighten2 = "#4DB6AC"
color.teal.lighten3 = "#80CBC4"
color.teal.lighten4 = "#B2DFDB"
color.teal.lighten5 = "#E0F2F1"
color.teal.darken1  = "#00897B"
color.teal.darken2  = "#00796B"
color.teal.darken3  = "#00695C"
color.teal.darken4  = "#004D40"
color.teal.accent1  = "#A7FFEB"
color.teal.accent2  = "#64FFDA"
color.teal.accent3  = "#1DE9B6"
color.teal.accent4  = "#00BFA5"

color.light_blue          = {}
color.light_blue.normal   = "#03A9F4"
color.light_blue.lighten5 = "#E1F5FE"
color.light_blue.lighten4 = "#B3E5FC"
color.light_blue.lighten3 = "#81D4FA"
color.light_blue.lighten2 = "#4FC3F7"
color.light_blue.lighten1 = "#29B6F6"
color.light_blue.darken1  = "#039BE5"
color.light_blue.darken2  = "#0288D1"
color.light_blue.darken3  = "#0277BD"
color.light_blue.darken4  = "#01579B"
color.light_blue.accent1  = "#80D8FF"
color.light_blue.accent2  = "#40C4FF"
color.light_blue.accent3  = "#00B0FF"
color.light_blue.accent4  = "#0091EA"

color.cyan          = {}
color.cyan.normal   = "#00BCD4"
color.cyan.lighten5 = "#E0F7FA"
color.cyan.lighten4 = "#B2EBF2"
color.cyan.lighten3 = "#80DEEA"
color.cyan.lighten2 = "#4DD0E1"
color.cyan.lighten1 = "#26C6DA"
color.cyan.darken1  = "#00ACC1"
color.cyan.darken2  = "#0097A7"
color.cyan.darken3  = "#00838F"
color.cyan.darken4  = "#006064"
color.cyan.accent1  = "#84FFFF"
color.cyan.accent2  = "#18FFFF"
color.cyan.accent3  = "#00E5FF"
color.cyan.accent4  = "#00B8D4"

----------------------------------------------------------------------------------------------------
--- Theme description ---
----------------------------------------------------------------------------------------------------
local theme                 = {}
theme.dir                   = os.getenv("HOME") .. "/.config/awesome/themes/raul/"
theme.wallpaper             = theme.dir .. "wallpapers/wall.png"

theme.font_size             = 9
theme.font_family           = "xos4 Terminus"
theme.font                  = theme.font_family .. " " .. theme.font_size

theme.fg_normal             = "#FEFEFE"
theme.fg_focus              = "#FFBE64" -- light orange
theme.fg_urgent             = "#C83F11"
theme.bg_normal             = "#222222"
theme.bg_focus              = "#1E2320"
theme.bg_urgent             = "#3F3F3F"
theme.bg_systray            = theme.bg_normal

theme.border_width          = 4
theme.border_normal         = "#3F3F3F"
theme.border_focus          = "#E1584800"
theme.border_marked         = "#CC9393"

theme.titlebar_bg_focus     = "#3F3F3F"
theme.titlebar_bg_normal    = "#3F3F3F"

theme.menu_height           = 20
theme.menu_width            = 200

theme.taglist_squares_sel   = theme.dir .. "taglist/squarefz.png"
theme.taglist_squares_unsel = theme.dir .. "taglist/squarez.png"

theme.awesome_icon          = theme.dir .. "linux_icon.png"
theme.menu_submenu_icon     = theme.dir .. "submenu.png"

theme.layout_tile           = theme.dir .. "layouts/tile.png"
theme.layout_tileleft       = theme.dir .. "layouts/tileleft.png"
theme.layout_tilebottom     = theme.dir .. "layouts/tilebottom.png"
theme.layout_tiletop        = theme.dir .. "layouts/tiletop.png"
theme.layout_fairv          = theme.dir .. "layouts/fairv.png"
theme.layout_fairh          = theme.dir .. "layouts/fairh.png"
theme.layout_spiral         = theme.dir .. "layouts/spiral.png"
theme.layout_dwindle        = theme.dir .. "layouts/dwindle.png"
theme.layout_max            = theme.dir .. "layouts/max.png"
theme.layout_fullscreen     = theme.dir .. "layouts/fullscreen.png"
theme.layout_magnifier      = theme.dir .. "layouts/magnifier.png"
theme.layout_floating       = theme.dir .. "layouts/floating.png"

theme.useless_gap           = 4
theme.wibar_height          = 25

----------------------------------------------------------------------------------------------------
--- Widgets ---
----------------------------------------------------------------------------------------------------

return theme
