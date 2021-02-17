from libqtile.config import DropDown, Key, Group, Match, Screen 
from libqtile.command import lazy
from settings.keys import mod, keys

groups = [Group(i) for i in [
    "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ",
]]

# groups = [
#         Group(""),
#         Group(""),
#         Group("", matches=[Match(wm_class=["google-chrome"])])
#         ]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name)),
        # Move to next workspace
        Key([mod], "n", lazy.screen.next_group()),
        #Move to the previous workspace
        Key([mod], "p", lazy.screen.prev_group())
    ])
