--------------------------------------------------------------------------------
--- Vector assets for themes
--------------------------------------------------------------------------------

local cairo = require("lgi").cairo
local gears_color = require("gears.color")

local theme_assets = {}

--- Generate selected taglist square.
-- @tparam number size Size.
-- @tparam color fg Background color.
-- @return Image with the square.
function theme_assets.tags_client_indicator(size, fg)
    local img = cairo.ImageSurface(cairo.Format.ARGB32, size, size)
    local cr = cairo.Context(img)

    local center = size / 2

    cr:set_source(gears_color(fg))
    -- cr:paint()
    cr:arc(center, center, center, 0, 2 * math.pi)
    cr:fill()
    return img
end

return theme_assets
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
