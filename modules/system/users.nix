{ pkgs, ... }:
{
  users.users.krluke = {
    isNormalUser = true;
    description = "krluke";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
