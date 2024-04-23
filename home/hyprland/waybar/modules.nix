colors:

{
  "hyprland/workspaces" = {
    persistent-workspaces = {
      eDP-1 = [ 1 2 3 4 5 6 7 8 9 10 ];
    };
    format = "{icon}";
    format-icons = {
      default = "";
      empty = "";
      active = "";
    };
  };

  mpris = {
    player = "spotify";
    format = "{status_icon}  {artist} - {title}";
    status-icons = {
      playing = "";
      paused = "";
    };
    tooltip = false;
    on-click-right = "hyprctl dispatch focuswindow title:Spotify";
  };

  clock = {
    interval = 1;
    format = "  {:%H:%M}";
    format-alt = "  {:%d/%m/%Y %H:%M:%S}";
    tooltip-format = "<tt><small>{calendar}</small></tt>";
    calendar = {
      mode = "month";
      format = {
        months = "<span color='#${colors.fg}'><b>{}</b></span>";
        days = "<span color='#${colors.fg}'><b>{}</b></span>";
        weekdays = "<span color='#${colors.yellow}'><b>{}</b></span>";
        today = "<span color='#${colors.red}'><b><u>{}</u></b></span>";
      };
    };
    actions = {
      on-scroll-up = "shift_up";
      on-scroll-down = "shift_down";
      on-click-right = "shift_reset";
    };
  };

  wireplumber = {
    format = "{icon}  {volume}%";
    format-muted = "  {volume}%";
    format-icons = [ "" "" "" ];
    scroll-step = 5.0;
    tooltip = false;
    on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
  };

  backlight = {
    format = "{icon}  {percent}%";
    format-icons = [ "󰃞" "󰃟" "󰃠" ];
    scroll-step = 5.0;
  };

  battery = {
    format = "{icon}  {capacity}%";
    format-charging = "{icon} 󱐋 {capacity}%";
    format-icons = [ "" "" "" "" "" ];
  };
}