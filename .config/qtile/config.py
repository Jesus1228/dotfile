from typing import List  # noqa: F401

from libqtile import hook
from os import path
from libqtile.config import Click, Drag#, Group, Key, Screen
from libqtile.lazy import lazy
import subprocess

from settings.keys import mod, keys
from settings.groups import groups
from settings.layouts import layouts, floating_layout
#from settings.widgets import widget_defaults, extension_defaults
from settings.wgt2 import widget_defaults, extension_defaults
from settings.screens import screens
from settings.path import qtile_path

@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostar.sh')])

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
