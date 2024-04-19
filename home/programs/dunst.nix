{ config, lib, pkgs, ... }:

{
  services.dunst = {
    enable = true;
    settings = with config.theme; {
      global = {
        follow = "mouse";
        width = 350;
        offset = "5x15";
        notification_limit = 6;
        separator_height = 2;
        horizontal_padding = 10;
        frame_width = 0;
        separator_color = "#${colors.black}";
        idle_threshold = 120;

        # Text
        font = "Hack Nerd Font 10";
        format = "<b>%s</b> %p\n%b";

        # Icons
        min_icon_size = 32;
        max_icon_size = 64;
        #   icon_path =
        #     "/home/stolen/.icons/tokyonight/status/22:/home/stolen/.icons/tokyonight/devices/22:/home/stolen/.icons/tokyonight/panel/22";

        # Misc/Advanced
        browser = "${pkgs.firefox}/bin/firefox -new-tab";
        corner_radius = 5;

        # Mouse
        mouse_middle_click = "close_all";
        mouse_right_click = "do_action, close_current";
      };

      urgency_low = {
        background = "#${colors.bg_dark}";
        foreground = "#${colors.fg}";
        timeout = 10;
      };

      urgency_normal = {
        background = "#${colors.bg_dark}";
        foreground = "#${colors.blue}";
        timeout = 10;
      };

      urgency_critical = {
        background = "#${colors.bg_dark}";
        foreground = "#${colors.red}";
        timeout = 0;
      };
    };
  };
}
