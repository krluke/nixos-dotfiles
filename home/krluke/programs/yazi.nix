{ pkgs, ... }:
let
  kanagawa-flavor = pkgs.fetchFromGitHub {
    owner = "dangooddd";
    repo = "kanagawa.yazi";
    rev = "04985d12842b06bdb3ad5f1b3d7abc631059b7f5";
    sha256 = "sha256-Yz0zRVzmgbrk0m7OkItxIK6W0WkPze/t09pWFgziNrw=";
  };
  yazi-plugins = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "56d6277d16479424edf380798cee597a40e5b563";
    sha256 = "sha256-Lg3ZKAFE9SJjoIToPJ6gf9vEKUsIxk1dLD63NcL29J4=";
  };
in
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    extraPackages = with pkgs; [
      chafa
      ffmpegthumbnailer
      poppler-utils
      unar
      jq
      fd
      ripgrep
      imagemagick
    ];
    settings = {
      mgr = {
        show_hidden = true;
        ratio = [ 1 3 4 ];
        sort_by = "alphabetical";
        sort_dir_first = true;
        sort_reverse = false;
      };
    };
    flavors = {
      kanagawa = kanagawa-flavor;
    };
    plugins = {
      full-border = "${yazi-plugins}/full-border.yazi";
      git = "${yazi-plugins}/git.yazi";
    };
    theme = {
      flavor.dark = "kanagawa";
      flavor.light = "kanagawa";
    };
    initLua = ''
      require("full-border"):setup()
      require("git"):setup()
    '';
  };
}
