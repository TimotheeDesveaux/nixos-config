{ config, lib, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # Close active window
      "$mod, Q, killactive"

      # Select workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # Move window to workspace, do not switch workspace
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"

      "$mod, F, fullscreen"
      "$mod, M, fullscreen, 1" # Keep gaps and bar (bspwm monocle mode)
      "$mod, S, togglefloating"

      # Show window on all workspace (floating only)
      "$mod, Y, pin"

      "$mod, H, movefocus, l"
      "$mod, L, movefocus, r"
      "$mod, K, movefocus, u"
      "$mod, J, movefocus, d"

      "$mod SHIFT, H, swapwindow, l"
      "$mod SHIFT, L, swapwindow, r"
      "$mod SHIFT, K, swapwindow, u"
      "$mod SHIFT, J, swapwindow, d"

      # Exit hyprland
      "$mod ALT, Q, exit"

      "$mod, Return, exec, alacritty"
      "$mod, D, exec, wofi -I --show drun"
      "$mod, X, exec, wofi-power-menu"
    ];

    binde = [
      "$mod CTRL, H, resizeactive, -10 0"
      "$mod CTRL, L, resizeactive, 10 0"
      "$mod CTRL, K, resizeactive, 0 -10"
      "$mod CTRL, J, resizeactive, 0 10"
    ];

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bindel = [
      # Raise/Lower audio volume
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

      # Raise/Lower brightness
      ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
      ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
    ];

    bindl = [
      # Toggle mute
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

      # Media
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioStop, exec, playerctl stop"
    ];
  };
}
