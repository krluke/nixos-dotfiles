{ config, pkgs, ... }:
{
  home.username = "krluke";
  home.homeDirectory = "/home/krluke";
  home.stateVersion = "26.05";
  imports = [
    ./programs/default.nix
  ];
  home.packages = with pkgs; [
    tree
  ];
}
