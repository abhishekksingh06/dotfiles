{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/fish.nix
    ./modules/ghostty.nix
    ./modules/hyprland.nix
    ./modules/direnv.nix
  ];

  home.username = "abhishek-kumar-singh";
  home.homeDirectory = "/home/abhishek-kumar-singh";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    ueberzug
    fastfetch
    git
    neovim
    networkmanagerapplet
    clang
    fish
    nodejs
    wl-clipboard
    ghostty
    unzip
    eza
    bat
    fzf
    fd
    zoxide
    waybar
    brave
    gh
    zellij
    direnv
    spotify
  ];

  home.file = {
   ".config/nvim" = {
      source = ./nvim;   
      recursive = true; 
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.dankMaterialShell.enable = true;
  programs.home-manager.enable = true;
}
