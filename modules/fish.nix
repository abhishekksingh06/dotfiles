{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    nix-your-shell
  ];

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
    '';

    shellInit = ''
      fish_vi_key_bindings
    '';

    plugins = [
      {
        name = "fzf.fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
    ];

    shellAbbrs = {
      ls = "eza --icons --color=always --group-directories-first";
      vim = "nvim";
      cat = "bat";
    };
  };
}
