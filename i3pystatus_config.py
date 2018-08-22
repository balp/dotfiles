#!/usr/bin/env python3
from i3pystatus import Status

status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %F %X KW%V",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
    format='{avg1}',)

status.register("cpu_usage",)

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format="{temp:.0f}°C",)

status.register('gpu_usage')
status.register('gpu_temp')
# Displays whether a DHCP client is running
status.register("runwatch",
    name="DHCP",
    path="/var/run/dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="eno1",
    next_if_down=True,
    format_up="{v4cidr} r{network_graph_recv} s{network_graph_sent}",)

status.register('net_speed',
  format='↓{speed_down:.1f}{down_units} ↑{speed_up:.1f}{up_units}'
)

status.register('external_ip',
  format='{country_code} {ip}'
)
# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="[{avail}G]",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    format="♪{volume}",)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
        format="{artist}:{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.run()

