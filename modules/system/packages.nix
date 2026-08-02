{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    fuzzel
    fastfetch
    opencode
  ];
  programs.firefox.enable = true;
  programs.zsh.enable = true;
}
