{ pkgs }:

pkgs.writeShellApplication {
  name = "wofi-power-menu";
  runtimeInputs = with pkgs; [
    wofi
  ];
  text = ''
    op=$(
    echo -e "⏻  Poweroff\n  Reboot\n  Suspend\n  Lock\n󰈆  Logout" \
      | wofi --dmenu \
      | tr -s ' ' \
      | tr '[:upper:]' '[:lower:]' \
      | cut -d ' ' -f 2
    )

    case $op in 
      poweroff)
        systemctl poweroff
        ;;
      reboot)
        systemctl reboot
        ;;
      suspend)
        systemctl suspend
        ;;
      lock)
        hyprlock
        ;;
      logout)
        hyprctl dispatch exit
        ;;
    esac
  '';
}
