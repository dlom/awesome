-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

awful = require("awful")

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.name = "zenburn"
theme.confdir = awful.util.getdir("config")
theme.dir = theme.confdir .. "/themes/" .. theme.name
theme.wallpaper = theme.dir .. "/background.png"
-- }}}

-- {{{ Styles
theme.font      = "profont 8"

-- {{{ Colors
theme.fg_normal  = "#DCDCCC"
theme.fg_focus   = "#F0DFAF"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#3C3B37"
theme.bg_focus   = "#1E2320"
theme.bg_urgent  = theme.bg_normal
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 2
theme.border_normal = theme.bg_normal
theme.border_focus  = "#6F6F6F"
theme.border_marked = theme.fg_urgent
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = theme.fg_urgent
-- }}}

-- {{{ Widgets
theme.fg_widget        = "#AECF96"
theme.fg_center_widget = "#88A175"
theme.fg_end_widget    = "#FF5656"
theme.fg_off_widget    = "#494B4F"
theme.fg_netup_widget  = "#7F9F7F"
theme.fg_netdn_widget  = theme.fg_urgent
theme.bg_widget        = theme.bg_normal
theme.border_widget    = theme.bg_normal
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = theme.fg_urgent
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = theme.dir .. "/icons/taglist/sel.png"
theme.taglist_squares_unsel = theme.dir .. "/icons/taglist/unsel.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = theme.dir .. "/awesome-icon.png"
theme.menu_submenu_icon      = theme.dir .. "/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme.dir .. "/icons/layouts/tile.png"
theme.layout_tileleft   = theme.dir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom = theme.dir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop    = theme.dir .. "/icons/layouts/tiletop.png"
theme.layout_fairv      = theme.dir .. "/icons/layouts/fairv.png"
theme.layout_fairh      = theme.dir .. "/icons/layouts/fairh.png"
theme.layout_spiral     = theme.dir .. "/icons/layouts/spiral.png"
theme.layout_dwindle    = theme.dir .. "/icons/layouts/dwindle.png"
theme.layout_max        = theme.dir .. "/icons/layouts/max.png"
theme.layout_fullscreen = theme.dir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier  = theme.dir .. "/icons/layouts/magnifier.png"
theme.layout_floating   = theme.dir .. "/icons/layouts/floating.png"
-- }}}

-- {{{ Widget icons
theme.widget_cpu    = theme.dir .. "/icons/cpu.png"
theme.widget_bat    = theme.dir .. "/icons/bat_full_01.png"
theme.widget_mem    = theme.dir .. "/icons/mem.png"
theme.widget_fs     = theme.dir .. "/icons/disk.png"
theme.widget_netdn  = theme.dir .. "/icons/net_down_02.png"
theme.widget_netup  = theme.dir .. "/icons/net_up_02.png"
theme.widget_wifi   = theme.dir .. "/icons/wifi_01.png"
theme.widget_mail   = theme.dir .. "/icons/mail.png"
theme.widget_vol    = theme.dir .. "/icons/spkr_01.png"
theme.widget_date   = theme.dir .. "/icons/clock.png"
theme.widget_sep    = theme.dir .. "/icons/separator_01.png"
theme.widget_sep_l  = theme.dir .. "/icons/separator_02.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
