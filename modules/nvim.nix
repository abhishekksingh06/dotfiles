{
  config,
  pkgs,
  ...
}: {

  programs.nixvim = {
    enable = true;

    opts = {
      # Line numbers
      number = true;
      relativenumber = true;

      # Indentation
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;

      # Search
      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;

      # UI
      termguicolors = true;
      cursorline = true;
      signcolumn = "yes";
      wrap = false;
      scrolloff = 8;
      sidescrolloff = 8;

      # Splits
      splitright = true;
      splitbelow = true;

      # Performance
      updatetime = 250;
      timeoutlen = 300;

      # Backup and undo
      swapfile = false;
      backup = false;
      undofile = true;

      # Misc
      mouse = "a";
      clipboard = "unnamedplus";
      completeopt = "menu,menuone,noselect";
    };

   plugins.tokyonight = {
      enable = true;
    };

  colorschemes.tokyonight.enable = true;
  };
}
