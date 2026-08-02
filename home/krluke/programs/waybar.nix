{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        spacing = 4;

        modules-left = [ "niri/workspaces" "niri/window" ];
        modules-center = [ "clock" ];
        modules-right = [
          "network"
          "pulseaudio"
          "cpu"
          "memory"
          "battery"
          "tray"
        ];

        "niri/workspaces" = {
          format = "{icon}";
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            default = "";
            focused = "";
            urgent = "";
          };
          disable-click = false;
          sort-by-name = true;
        };

        "niri/window" = {
          format = "{}";
          max-length = 50;
          rewrite = {
            "(.*) - Mozilla Firefox" = "󰈹 $1";
            "(.*) - Alacritty" = "󰆍 $1";
            "(.*) - Yazi" = "󰀬 $1";
          };
        };

        "clock" = {
          format = "󰥔 {:%H:%M  %a %b %d}";
          format-alt = "{:%Y-%m-%d}";
          tooltip-format = "<tt>{calendar}</tt>";
        };

        "network" = {
          format-wifi = "󰤨 {essid}";
          format-ethernet = "󰈀 {ipaddr}";
          format-disconnected = "󰤮 Disconnected";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-muted = "󰝟";
          format-icons = {
            headphone = "󰋋";
            default = [ "󰕿" "󰖀" "󰕾" ];
          };
        };

        "cpu" = {
          format = "󰻠 {usage}%";
          interval = 5;
        };

        "memory" = {
          format = "󰍛 {percentage}%";
          interval = 5;
        };

        "battery" = {
          format = "{icon} {capacity}%";
          format-icons = [ "󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          states = {
            warning = 30;
            critical = 15;
          };
        };

        "tray" = {
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        border: none;
        border-radius: 0;
        font-family: "JetBrainsMono Nerd Font", "Symbols Nerd Font", sans-serif;
        font-size: 14px;
        min-height: 0;
      }

      window#waybar {
        background-color: #1F1F28;
        color: #DCDCDC;
      }

      #workspaces button {
        padding: 0 10px;
        background: transparent;
        color: #7E9CD8;
        border-bottom: 2px solid transparent;
      }

      #workspaces button.focused {
        background: #2D2D3F;
        color: #E6C384;
        border-bottom: 2px solid #E6C384;
      }

      #workspaces button.urgent {
        color: #C34043;
      }

      #window {
        padding: 0 10px;
        color: #C8C093;
      }

      #clock {
        padding: 0 15px;
        color: #7AA2F7;
        font-weight: bold;
      }

      #network, #pulseaudio, #cpu, #memory, #battery {
        padding: 0 10px;
        margin: 0 4px;
        color: #98BB6C;
      }

      #network.warning, #battery.warning { color: #E6C384; }
      #network.disconnected, #battery.critical { color: #C34043; }

      #tray {
        padding: 0 10px;
      }
    '';
  };
}
