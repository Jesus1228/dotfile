from libqtile import widget
from settings.theme import colors

base = lambda fg='text', bg='dark': {
        'foreground': colors[fg],
        'background': colors[bg]
        }

separator = lambda: widget.Sep(**base(), linewidth=0, padding=5)

icon = lambda fg='text', bg='dark', fontsize=16, text="?": widget.TextBox(
    **base(fg, bg),
    fontsize=fontsize,
    text=text,
    padding=3
)

workspaces = lambda: [
        separator(),
        widget.GroupBox(
            **base(fg='light'),
            font='Hurmit NF',
            fontsize=20,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        #widget.WindowName(**base(fg='focus'),fontsize=14, padding=5),
        widget.TaskList(**base(fg='focus'), txt_floating='🗗 ', font='Tex Gyre Adventor', borderwidth=0, padding=4),
        separator()
]

primary_widgets = [
        *workspaces(),

        separator(),

        icon(fg="color4", text='', fontsize=20),
        
        widget.CheckUpdates(
            **base(fg='color4'),
            update_interval=1800,
            display_format='{updates}',
            #colour_have_updates="color4",
            distro='Ubuntu',
            restar_indicator='Restart',
        ),

        icon(fg="color3", text=' ', fontsize=20),

        #widget.CPU(**base(fg='color3')),
        widget.CapsNumLockIndicator(**base(fg='color3')),

        separator(),

        widget.CurrentLayoutIcon(**base(fg='color2'), scale=0.65),

        widget.CurrentLayout(**base(fg='color2'), padding=5),

        icon(fg="color1", fontsize=20, text=' '), # Icon: nf-mdi-calendar_clock

        widget.Clock(**base(fg='color1'), format='%d/%m/%Y - %H:%M '),

        widget.Systray(background=colors['dark'], padding=5),
 ]

secondary_widgets = [
        *workspaces(),

        separator(),

        widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),

        widget.CurrentLayout(**base(bg='color1'), padding=5),
]

widget_defaults = {
        'font': 'SpaceMono NF Bold',
        'fontsize': 13,
        'padding': 1,
    }
extension_defaults = widget_defaults.copy()
