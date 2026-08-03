{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    fuzzel
    fastfetch
    opencode
    grim          # screenshot tool (Wayland)
    slurp         # region selector for screenshots
    wl-clipboard  # wl-copy / wl-paste for clipboard integration
  ];
  programs.firefox.enable = true;
  programs.zsh.enable = true;
}
