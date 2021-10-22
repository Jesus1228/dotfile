from libqtile.config import Screen
from libqtile import bar
#from settings.widgets import primary_widgets, secondary_widgets
from settings.wgt2 import primary_widgets, secondary_widgets


status_bar = lambda widgets: bar.Bar(widgets, 24, opacity=0.95)

screens = [Screen(top=status_bar(primary_widgets))]
