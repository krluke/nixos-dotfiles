{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "krluke";
      user.email = "krluke@example.com";
      alias = {
        st = "status";
        co = "checkout";
        br = "branch";
        ci = "commit";
        lg = "log --oneline --graph --decorate";
      };
    };
  };
}
