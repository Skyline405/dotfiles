-----------------------------
--   Fall awesome theme    --
-- Author: Ruslan Anufriev --
-----------------------------
local theme_assets = require('beautiful.theme_assets')
local xresources = require('beautiful.xresources')
local dpi = xresources.apply_dpi

local gfs = require('gears.filesystem')
local themes_path = os.getenv('HOME') .. '/.config/awesome/themes/fall/'

local lain = require('lain')
local markup = lain.util.markup
local separators = lain.util.separators

local wibox = require('wibox')
local awful = require('awful')
local gears = require('gears')

--------------------------------------------------------------------------------
--- Theme ---
--------------------------------------------------------------------------------
local theme         = {}
theme.dir           = themes_path

theme.font_size     = 9
theme.font_family   = 'xos4 Terminus'
theme.font          = theme.font_family .. ' ' .. theme.font_size

theme.bg_normal     = '#222222'
theme.bg_focus      = '#E15848'
theme.bg_urgent     = '#ff0000'
theme.bg_minimize   = '#444444'
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = '#ffffff'
theme.fg_focus      = '#ffffff'
theme.fg_urgent     = '#ffffff'
theme.fg_minimize   = '#ffffff'

theme.useless_gap   = dpi(4)
theme.border_width  = dpi(4)
theme.border_normal = '#222222'
theme.border_focus  = '#E15848'
theme.border_marked = '#91231c'

theme.titlebar_enabled = false
-- theme.titlebar_bg_normal = '#000000'
-- theme.titlebar_bg_focus = '#E15848'

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = '#ff0000'

-- Generate taglist squares:
-- local taglist_square_size = dpi(4)
-- theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    -- taglist_square_size, theme.fg_normal
-- )
-- theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    -- taglist_square_size, theme.fg_normal
-- )

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

theme.menu_submenu_icon = themes_path .. 'icons/submenu.png'
theme.menu_height = dpi(20)
theme.menu_width  = dpi(170)
theme.menu_border_width = 0

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = '#cc0000'

theme.awesome_icon  = themes_path .. 'icons/arch_logo.png'
theme.wallpaper     = themes_path..'wallpapers/fall.png'

--- Tasklist ---
theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon    = true

-- You can use your own layout icons like this:
theme.layout_fairh      = themes_path..'layouts/fairhw.png'
theme.layout_fairv      = themes_path..'layouts/fairvw.png'
theme.layout_floating   = themes_path..'layouts/floatingw.png'
theme.layout_magnifier  = themes_path..'layouts/magnifierw.png'
theme.layout_max        = themes_path..'layouts/maxw.png'
theme.layout_fullscreen = themes_path..'layouts/fullscreenw.png'
theme.layout_tilebottom = themes_path..'layouts/tilebottomw.png'
theme.layout_tileleft   = themes_path..'layouts/tileleftw.png'
theme.layout_tile       = themes_path..'layouts/tilew.png'
theme.layout_tiletop    = themes_path..'layouts/tiletopw.png'
theme.layout_spiral     = themes_path..'layouts/spiralw.png'
theme.layout_dwindle    = themes_path..'layouts/dwindlew.png'
theme.layout_cornernw   = themes_path..'layouts/cornernww.png'
theme.layout_cornerne   = themes_path..'layouts/cornernew.png'
theme.layout_cornersw   = themes_path..'layouts/cornersww.png'
theme.layout_cornerse   = themes_path..'layouts/cornersew.png'

theme.taglist_icon_only = true

theme.icon                  = {}
theme.icon.code             = theme.dir .. 'icons/white/code.png'
theme.icon.terminal         = theme.dir .. 'icons/white/terminal.png'
theme.icon.bug              = theme.dir .. 'icons/white/bug.png'
theme.icon.skype            = theme.dir .. 'icons/white/skype.png'
theme.icon.google_chrome    = theme.dir .. 'icons/white/google_chrome.png'
theme.icon.thunderbird      = theme.dir .. 'icons/white/thunderbird.png'
theme.icon.ram              = theme.dir .. 'icons/white/ram.png'
theme.icon.cpu              = theme.dir .. 'icons/white/cpu.png'
theme.icon.hdd              = theme.dir .. 'icons/white/hdd.png'
theme.icon.net_connected    = theme.dir .. 'icons/white/net_connected.png'
theme.icon.net_disconnected = theme.dir .. 'icons/white/net_disconnected.png'
theme.icon.wifi_max         = theme.dir .. 'icons/white/wifi_max.png'
theme.icon.wifi_medium      = theme.dir .. 'icons/white/wifi_medium.png'
theme.icon.wifi_low         = theme.dir .. 'icons/white/wifi_low.png'
theme.icon.wifi_nosignal    = theme.dir .. 'icons/white/wifi_nosignal.png'
theme.icon.volume_max       = theme.dir .. 'icons/white/volume_max.png'
theme.icon.volume_medium    = theme.dir .. 'icons/white/volume_medium.png'
theme.icon.volume_low       = theme.dir .. 'icons/white/volume_low.png'
theme.icon.volume_lower     = theme.dir .. 'icons/white/volume_lower.png'
theme.icon.volume_0         = theme.dir .. 'icons/white/volume_0.png'
theme.icon.volume_off       = theme.dir .. 'icons/white/volume_off.png'
theme.icon.task_complete    = theme.dir .. 'icons/white/task_complete.png'
theme.icon.task_edit        = theme.dir .. 'icons/white/task_edit.png'
theme.icon.task_wait        = theme.dir .. 'icons/white/task_wait.png'


-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- DEBUG
theme.color0  = '#393939'
theme.color1  = '#EE9379'
theme.color2  = '#E2FFC7'
theme.color3  = '#FFFFB9'
theme.color4  = '#EDE7B4'
theme.color5  = '#E2BEB5'
theme.color6  = '#6EB49D'
theme.color7  = '#dddddd'
theme.color8  = '#474747'
theme.color9  = '#FF8D80'
theme.color10 = '#DBFFB3'
theme.color11 = '#FFBE64'
theme.color12 = '#E15848'
theme.color13 = '#94C7B5'
theme.color14 = '#A2C3CC'
theme.color15 = '#dddddd'
theme.color16 = '#777E76'
theme.color17 = '#343434'

theme.wibar_height = dpi(22)

--------------------------------------------------------------------------------
--- Helpres ---
--------------------------------------------------------------------------------
local arrow_left = separators.arrow_left

local function build_with_arrows(widgets)
    local res = {}
    local prev_bg = 'alpha'
    for i = 1, #widgets do
        local item = widgets[i]
        local widget = item[1]
        local bg = item[2] or theme.bg_normal
        local fg = item[3] or theme.fg_normal

        widget = wibox.container.background(widget, bg)
        widget.fg = fg

        table.insert(res, arrow_left(prev_bg, bg))
        table.insert(res, widget)

        prev_bg = bg
    end
    return res
end

function map_range(s, a1, a2, b1, b2)
    return b1 + (s-a1) * (b2-b1) / (a2-a1)
end
--------------------------------------------------------------------------------
--- Wibar and widgets ---
--------------------------------------------------------------------------------

-- Memory usage
local mem_usage = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, ' ' .. mem_now.perc .. '% '))
    end
})
local mem_usage_widget = wibox.container.margin(
    wibox.widget {
        layout = wibox.layout.align.horizontal,
        wibox.widget.imagebox(theme.icon.ram),
        mem_usage.widget,
    }, dpi(2), dpi(3), dpi(2), dpi(2)
)

-- CPU usage
local cpu_usage = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, ' ' .. cpu_now.usage .. '% '))
    end
})
local cpu_usage_widget = wibox.container.margin(
    wibox.widget {
        layout = wibox.layout.align.horizontal,
        wibox.widget.imagebox(theme.icon.cpu),
        cpu_usage.widget,
    }, dpi(2), dpi(3), dpi(2), dpi(2)
)

-- Network status
local eth_device = 'enp4s0'
local eth_icon   = wibox.widget.imagebox()
local wifi_icon  = wibox.widget.imagebox()
local net_status = lain.widget.net({
    iface = eth_device,
    eth_state = 'on',
    wifi_state = 'on',
    settings = function()
        local eth = net_now.devices[eth_device]
        if eth then
            if eth.ethernet then
                eth_icon:set_image(theme.icon.net_connected)
            else
                eth_icon:set_image(theme.icon.net_disconnected)
            end
        end

        -- TODO
        -- local wlan0 = net_now.devices.wlan0
        -- if wlan0 then
            -- if wlan0.wifi then
                -- local signal = wlan0.signal
                -- if signal < -83 then
                    -- wifi_icon:set_image(theme.icon.wifi_nosignal)
                -- elseif signal < -70 then
                    -- wifi_icon:set_image(theme.icon.wifi_low)
                -- elseif signal < -53 then
                    -- wifi_icon:set_image(theme.icon.wifi_medium)
                -- elseif signal >= -53 then
                    -- wifi_icon:set_image(theme.icon.wifi_max)
                -- end
            -- else
                -- wifi_icon:set_image()
            -- end
        -- end
    end
})
local net_status_widget = wibox.container.margin(
    wibox.widget {
        layout = wibox.layout.align.horizontal,
        eth_icon, wifi_icon,
        net_status.widget,
    }, dpi(2), dpi(3), dpi(2), dpi(2)
)

-- Volume control ALSA
local volume_icons = {
    theme.icon.volume_lower,
    theme.icon.volume_medium,
    theme.icon.volume_max,
}
local volume_icon   = wibox.widget.imagebox()
local volume = lain.widget.alsa({
    timeout = 2,
    followtag = true,
    notification_preset = { font = theme.font, fg = theme.fg_normal },
    settings = function()
        if volume_now.status == 'on' then
            if tonumber(volume_now.level) > 0 then
                local idx = map_range(volume_now.level, 0, 100, 1, #volume_icons)
                idx = tonumber(string.format('%.0f', idx))
                volume_icon:set_image(volume_icons[idx])
            else
                volume_icon:set_image(theme.icon.volume_0)
            end
        else
            volume_icon:set_image(theme.icon.volume_off)
        end
        widget:set_markup(markup.font(theme.font, ' ' .. volume_now.level .. '% '))
    end
})

local volume_widget = wibox.container.margin(
    wibox.widget {
        layout = wibox.layout.align.horizontal,
        volume_icon,
        volume.widget,
    }, dpi(2), dpi(3), dpi(2), dpi(2)
)

volume_widget:buttons(gears.table.join(
    awful.button({}, 1, function() -- left click
        awful.spawn(string.format("%s -e alsamixer", terminal))
    end),
    awful.button({}, 2, function() -- middle click
        os.execute(string.format("%s set %s 100%%", volume.cmd, volume.channel))
        volume.update()
    end),
    awful.button({}, 3, function() -- right click
        os.execute(string.format("%s set %s toggle", volume.cmd, volume.togglechannel or volume.channel))
        volume.update()
    end),
    awful.button({}, 4, function() -- scroll up
        os.execute(string.format("%s set %s 1%%+", volume.cmd, volume.channel))
        volume.update()
    end),
    awful.button({}, 5, function() -- scroll down
        os.execute(string.format("%s set %s 1%%-", volume.cmd, volume.channel))
        volume.update()
    end)
))

-- Taskwarrior
local taskwar_widget = wibox.container.margin(
    wibox.widget {
        layout = wibox.layout.align.horizontal,
        wibox.widget.imagebox(theme.icon.task_edit),
    }, dpi(2), dpi(3), dpi(2), dpi(2)
)
lain.widget.contrib.task.attach(taskwar_widget, {
    -- do not colorize output
    followtag = true,
    -- show_cmd = 'task list rc.verbose:label',
    notification_preset = {
        font    = theme.font,
        icon    = theme.icon.task_wait,
        timeout = 0,
    }
})
taskwar_widget:buttons(gears.table.join(
    awful.button({}, 1, lain.widget.contrib.task.prompt)
))

-- HDD usage (Gio/Glib >= 2.54 required)
-- local hdd_usage = lain.widget.fs({
    -- settings = function()
        -- local units = fs_now['/'].units
        -- local used = fs_now['/'].used
        -- local size = fs_now['/'].size
        -- widget:set_markup(markup.font(theme.font, ' '..used..'/'..size..' '..units))
    -- end
-- })
-- local hdd_usage_widget = wibox.container.margin(
    -- wibox.widget {
        -- layout = wibox.layout.align.horizontal,
        -- wibox.widget.imagebox(theme.icon.hdd),
        -- hdd_usage.widget,
    -- }, dpi(2), dpi(3), dpi(2), dpi(2)
-- )

-- CPU temperature
-- local cpu_temp = lain.widget.temp({
    -- settings = function()
        -- widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    -- end
-- })
-- local cpu_temp_widget = wibox.container.margin(
    -- wibox.widget {
        -- layout = wibox.layout.align.horizontal,
        -- wibox.widget.imagebox(theme.icon.cpu),
        -- cpu_temp.widget,
    -- }, dpi(2), dpi(3), dpi(2), dpi(2)
-- )

-- Clock
local mytextclock = wibox.widget.textclock(), theme.clock_bg

-- Keybord layout
local mykeyboardlayout = awful.widget.keyboardlayout(), theme.layoutbox_bg

-- Calendar
local calendar_widget = lain.widget.cal({
    attach_to = { mytextclock },
    followtag = true,
    notification_preset = {
        font = theme.font,
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})


function theme.add_mywibox(s)
    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = wibox.container.margin(awful.widget.layoutbox(s), dpi(3), dpi(3), dpi(3), dpi(3))
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({ }, 1, function () awful.layout.inc( 1) end),
        awful.button({ }, 3, function () awful.layout.inc(-1) end),
        awful.button({ }, 4, function () awful.layout.inc( 1) end),
        awful.button({ }, 5, function () awful.layout.inc(-1) end)
    ))

    local mysystray = wibox.container.margin(wibox.widget.systray(), dpi(4), dpi(4), dpi(2), dpi(2))

    --- { widget, bg_color, fg_color } ---
    local widget_list = build_with_arrows({
        { mysystray,          'alpha',    },
        { mykeyboardlayout,   '#474747',  },

        { taskwar_widget,     '#777E76',  },
        { cpu_usage_widget,   '#4B696D',  },
        { mem_usage_widget,   '#6EB49D',  },
        { volume_widget,      '#474747',  },
        { net_status_widget,  '#777E76',  },

        { mytextclock,        '#E15848',  },
        { s.mylayoutbox,      '#474747',  },
    })
    widget_list.layout = wibox.layout.fixed.horizontal

    -- Create the wibox
    s.mywibox = awful.wibar({ position = 'top', screen = s })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        wibox.container.margin(mylauncher, dpi(10), dpi(10)),
        {
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            s.mypromptbox,
        },
        widget_list
    }

end

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
