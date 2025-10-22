{
  config,
  pkgs,
  ...
}: {
  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = true;
      vimAlias = true;

      clipboard = {
        enable = true;
        providers = {
          wl-copy.enable = true; # For Wayland
          # xclip.enable = true;  # For X11 (uncomment if using X11)
        };
        registers = "unnamedplus";
      };

      debugMode = {
        enable = false;
        level = 16;
        logFile = "/tmp/nvim.log";
      };

      keymaps = [
        # Neo-tree toggle (C-n)
        {
          key = "<C-n>";
          mode = "n";
          action = "<cmd>Neotree toggle<CR>";
          desc = "Toggle NeoTree";
          silent = true;
        }

        # Terminal toggle (C-/)
        {
          key = "<C-/>";
          mode = ["n" "t"];
          action = "<cmd>ToggleTerm<CR>";
          desc = "Toggle Terminal";
          silent = true;
        }

        # Trouble diagnostics toggle (xx)
        {
          key = "xx";
          mode = "n";
          action = "<cmd>Trouble diagnostics toggle<CR>";
          desc = "Toggle diagnostics list (Trouble)";
          silent = true;
        }

        # Window movement with Ctrl-hjkl
        {
          key = "<C-h>";
          mode = ["n" "i"];
          action = "<C-w>h";
          desc = "Move to left window";
          silent = true;
        }
        {
          key = "<C-j>";
          mode = ["n" "i"];
          action = "<C-w>j";
          desc = "Move to lower window";
          silent = true;
        }
        {
          key = "<C-k>";
          mode = ["n" "i"];
          action = "<C-w>k";
          desc = "Move to upper window";
          silent = true;
        }
        {
          key = "<C-l>";
          mode = ["n" "i"];
          action = "<C-w>l";
          desc = "Move to right window";
          silent = true;
        }

        # lazygit
        {
          key = "<leader>gg";
          mode = "n";
          action = "<cmd>lua require('toggleterm.terminal').Terminal:new({ cmd = 'lazygit', hidden = true }):toggle()<CR>";
          desc = "Toggle LazyGit terminal";
          silent = true;
        }
      ];

      lsp = {
        enable = true;
        formatOnSave = true;
        lspkind.enable = false;
        lspsaga.enable = false;
        trouble.enable = true;
        lspSignature.enable = false;
        otter-nvim.enable = false;
        nvim-docs-view.enable = false;
      };

      debugger.nvim-dap = {
        enable = true;
        ui.enable = true;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;
        nix.enable = true;
        markdown.enable = true;
        bash.enable = true;
        clang.enable = true;
        css.enable = true;
        html.enable = true;
        sql.enable = true;
        ts.enable = true;
        go.enable = true;
        lua.enable = true;
        zig.enable = true;
        python.enable = true;
        rust = {
          enable = true;
          crates.enable = true;
        };
        tailwind.enable = true;
        svelte.enable = true;
      };

      visuals = {
        nvim-web-devicons.enable = true;
        fidget-nvim.enable = true;
        indent-blankline.enable = true;
      };

      statusline.lualine = {
        enable = true;
        theme = "tokyonight";
      };

      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
        transparent = true;
      };

      autopairs.nvim-autopairs.enable = true;

      autocomplete.blink-cmp = {
        enable = true;
        setupOpts.signature.enabled = true;
      };

      snippets.luasnip.enable = true;

      filetree.neo-tree.enable = true;

      tabline.nvimBufferline.enable = true;

      treesitter.context.enable = true;

      binds = {
        whichKey = {
          enable = true;
          setupOpts = {
            preset = "helix";
          };
        };
        cheatsheet.enable = true;
      };

      telescope.enable = true;

      git = {
        enable = true;
        gitsigns.enable = true;
        gitsigns.codeActions.enable = false;
        neogit.enable = true;
      };

      dashboard.alpha.enable = true;

      notify.nvim-notify.enable = true;

      projects.project-nvim.enable = true;

      utility = {
        yanky-nvim.enable = false;
        icon-picker.enable = true;
        surround.enable = true;
        images.image-nvim.enable = true;
      };

      notes.todo-comments.enable = true;

      terminal.toggleterm = {
        enable = true;
        lazygit.enable = true;
      };

      ui = {
        borders.enable = true;
        noice.enable = true;
        colorizer.enable = true;
        smartcolumn = {
          enable = true;
          setupOpts.custom_colorcolumn = {
            nix = "110";
            ruby = "120";
            java = "130";
            go = ["90" "130"];
          };
        };
        fastaction.enable = true;
      };

      comments.comment-nvim.enable = false;
    };
  };
}
