{ config, lib, pkgs, ... }:
{
  imports = [
    ./hardware.nix
    ./boot.nix
    ../../modules/system
    ../../modules/desktop
  ];
  system.stateVersion = "26.05";
}
