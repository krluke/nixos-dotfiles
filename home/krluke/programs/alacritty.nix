{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.85;
        padding = { x = 8; y = 8; };
        dynamic_padding = true;
      };
      font = {
        size = 13;
        normal.family = "JetBrainsMono Nerd Font";
      };
      colors = {
        primary = {
          background = "#1F1F28";
          foreground = "#DCDCDC";
        };
        normal = {
          black   = "#090618";
          red     = "#C34043";
          green   = "#76946A";
          yellow  = "#C0A36E";
          blue    = "#7E9CD8";
          magenta = "#957FB8";
          cyan    = "#6A9589";
          white   = "#C8C093";
        };
        bright = {
          black   = "#727169";
          red     = "#E82424";
          green   = "#98BB6C";
          yellow  = "#E6C384";
          blue    = "#7AA2F7";
          magenta = "#B4BFE3";
          cyan    = "#7AA89F";
          white   = "#DCDCDC";
        };
      };
    };
  };
}
