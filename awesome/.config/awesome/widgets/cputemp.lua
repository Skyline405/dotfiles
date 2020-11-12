local helpers  = require("lain.helpers")
local wibox    = require("wibox")
local spawn    = require("awful.spawn")

-- {thermal,core} temperature info
-- lain.widget.temp

local function factory(args)
    local args     = args or {}
    local temp     = { widget = args.widget or wibox.widget.textbox() }
    local timeout  = args.timeout or 30
    local settings = args.settings or function() end

    function temp.update()
				local cmd =	"sensors | grep -A 0 'CPU T' | awk '{print $3-0}'"
				spawn.easy_async_with_shell(cmd, function(f)
            coretemp_now = tonumber(f) or "N/A"
            widget = temp.widget
            settings()
        end)
    end

    helpers.newtimer("thermal", timeout, temp.update)

    return temp
end

return factory
