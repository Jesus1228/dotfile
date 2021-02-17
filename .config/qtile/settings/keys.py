from libqtile import window
from libqtile.config import Key
from libqtile.command import lazy

mod = "mod4"

keys = [
    #-------------Configuración general-----------------
    # Switch between windows in current stack pane
    Key([mod], "k", lazy.layout.up(),
        desc="Move focus up in stack pane"),
    Key([mod], "j", lazy.layout.down(),
        desc="Move focus down in stack pane"),
    Key([mod], "h", lazy.layout.left(),
        desc="Move focus left in stack pane"),
    Key([mod], "l", lazy.layout.right(),
        desc="Move focus right in stack pane"),

    #Changee windowa size (Monadtall)
    Key([mod, "shift"], "l", lazy.layout.grow()),
    Key([mod, "shift"], "h", lazy.layout.shrink()),

    # Move windows up or down in current stack
    Key([mod, "control"], "k", lazy.layout.shuffle_up(),
        desc="Move window down in current stack "),
    Key([mod, "control"], "j", lazy.layout.shuffle_down(),
        desc="Move window up in current stack "),

    # Switch window focus to other pane(s) of stack
    Key([mod], "space", lazy.layout.next(),
        desc="Switch window focus to other pane(s) of stack"),

    # Switch between fullscreen in the current window
    Key([mod], "f", lazy.window.toggle_fullscreen()),

    # Swap panes of split stack
    Key([mod, "shift"], "space", lazy.layout.rotate(),
        desc="Swap panes of split stack"),

    #---------------Aplicaciones--------------------------------

    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    #Terminal
    Key([mod], "Return", lazy.spawn('alacritty'), desc="Launch terminal"),
    #Navegador
    Key([mod], "b", lazy.spawn('google-chrome')),
    #Explorados de archivos
    Key([mod], "e", lazy.spawn('thunar')),
    #Lanzador de aplicaciones
    Key([mod], "m", lazy.spawn('rofi -show run -columns 2 -theme purple')),
    #Captura de pantalla
    Key([mod], "s", lazy.spawn('scrot')),

    #-------------------------Otros-------------------------------

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod, "shift"], "Tab", lazy.prev_layout(), desc="Toggle previous layout in th list"),
    #Cerrar ventana
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    #Reinicia Qtile
    Key([mod, "control"], "r", lazy.restart(), desc="Restart qtile"),
    #Cerrar sesión
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown qtile"),

    #------------------------Hardware Control-----------------------

    # Volumen
    Key([], "XF86AudioLowerVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ -5%"
    )),
    Key([], "XF86AudioRaiseVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ +5%"
    )),
    Key([], "XF86AudioMute", lazy.spawn(
        "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    )),
# Brillo
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]
