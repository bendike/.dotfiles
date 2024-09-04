{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "bendike-tools";
      paths = [
        neovim
        fzf
        lazygit
      ];
    };
  };
}
