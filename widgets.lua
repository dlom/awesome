local vicious = require("vicious")

local widgets = {}

wireless = true
netinteface = "wlp3s0"
battery = "BAT0"
alsachannel = "Master"
alsadevice = "pulse"
alsastep = "2%"

separator_r = wibox.widget.imagebox()
separator_r:set_image(beautiful.widget_sep_r)
separator_l = wibox.widget.imagebox()
separator_l:set_image(beautiful.widget_sep_l)

wirelessicon = wibox.widget.imagebox()
wirelessicon:set_image(beautiful.widget_wifi)
wirelesswidget = wibox.widget.textbox()
if wireless then
    vicious.register(wirelesswidget, vicious.widgets.wifi, ' ${ssid} ', 0.1, netinteface)
end

hibernate  = function() awful.util.spawn("systemctl hibernate", false) end
suspend    = function() awful.util.spawn("systemctl suspend", false) end
volmute    = function() awful.util.spawn("amixer -D " .. alsadevice .. " set " .. alsachannel .. " toggle -q", false) end
volup      = function() awful.util.spawn("amixer -D " .. alsadevice .. " set " .. alsachannel .. " " .. alsastep .."+ -q", false) end
voldown    = function() awful.util.spawn("amixer -D " .. alsadevice .. " set " .. alsachannel .. " " .. alsastep .."- -q", false) end
brightup   = function() awful.util.spawn("xbacklight +10", false) end
brightdown = function() awful.util.spawn("xbacklight -10", false) end

volicon = wibox.widget.imagebox()
volicon:set_image(beautiful.widget_vol)
volwidget = wibox.widget.textbox()
vicious.register(volwidget, vicious.widgets.volume, function(widget, args)
    if args[2] == "♫" then
        return " " .. args[1] .. "% "
    else
        return " (m) "
    end
end, 0.1, alsachannel)
volbar = awful.widget.progressbar()
volbar:set_vertical(true):set_ticks(true)
volbar:set_height(16):set_width(8):set_ticks_size(3)
volbar:set_color({
    type = "linear",
    from = { 0, 0 },
    to = { 0, 16 },
    stops = {
        { 0, beautiful.fg_widget },
        { 0.5, beautiful.fg_center_widget },
        { 1, beautiful.fg_end_widget }
    }
})
vicious.register(volbar, vicious.widgets.volume, function(widget, args)
    if args[2] == "♫"  then
        return args[1]
    else
        return 0
    end
end, 0.1, alsachannel)
volbar:buttons(awful.util.table.join(
   awful.button({ }, 1, volmute),
   awful.button({ }, 4, volup),
   awful.button({ }, 5, voldown)
))
volwidget:buttons(volbar:buttons())
volicon:buttons(volbar:buttons())

dnicon = wibox.widget.imagebox()
dnicon:set_image(beautiful.widget_netdn)
netwidget = wibox.widget.textbox()
vicious.register(netwidget, vicious.widgets.net, '<span color="'
  .. beautiful.fg_netdn_widget ..'">${' .. netinteface .. ' down_kb}</span> <span color="'
  .. beautiful.fg_netup_widget ..'">${' .. netinteface .. ' up_kb}</span>', 0.1)
upicon = wibox.widget.imagebox()
upicon:set_image(beautiful.widget_netup)

baticon = wibox.widget.imagebox()
baticon:set_image(beautiful.widget_bat)
batwidget = wibox.widget.textbox()
vicious.register(batwidget, vicious.widgets.bat, " $1$2%", 1, battery)

-- Create a textclock widget
clockicon = wibox.widget.imagebox()
clockicon:set_image(beautiful.widget_date)
mytextclock = awful.widget.textclock()

function widgets.init_l(left_layout)
  left_layout:add(separator_l)
end

function widgets.init_r(right_layout)

end
