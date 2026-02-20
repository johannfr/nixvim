{pkgs, ...}: {
  plugins.aerial = {
    enable = true;
    settings = {
      backends = ["lsp" "treesitter"];
      layout = {
        max_width = 0.5;
        resize_to_content = true;
        default_direction = "prefer_right";
      };
    };
  };

  plugins.lsp = {
    enable = true;
    servers = {
      clangd = {
        enable = true;
      };
      pylsp.enable = true;
      ruff.enable = true;
    };
    keymaps = {
      silent = true;

      diagnostic = {
        "<leader>do" = "open_float";
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };

      lspBuf = {
        "K" = "hover";
        "<leader>ca" = "code_action";
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
      };
    };
  };

  plugins.clangd-extensions = {
    enable = true;
  };

  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      make
      nix
      regex
      toml
      vim
      xml
      yaml
      python
      c
      cpp
      cmake
      dot
      git_config
      git_rebase
      gitattributes
      gitcommit
      gitignore
    ];
  };

  plugins.treesitter-context = {
    enable = true;
  };
}
