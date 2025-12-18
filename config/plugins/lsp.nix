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
      clangd.enable = false;
      ccls.enable = true;
      pylsp.enable = true;
      ruff.enable = true;
      # pylyzer.enable = true;
      # basedpyright = {
      #   enable = true;
      #   settings = {
      #       useLibraryCodeForTypes = false;
      #       reportMissingTypeStubs = false;
      #   };
      # };
      # pyright = {
      #   enable = true;
      #   settings = {
      #     pyright.disableOrganizeImports = true;
      #   };
      # };
    };
    keymaps = {
      silent = true;

      diagnostic = {
        "<leader>do" = "open_float";
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };

      lspBuf = {
        "<leader>ci" = {
          action = "implementation";
          desc = "Implementation";
        };
        "<leader>cD" = {
          action = "references";
          desc = "References";
        };
        "<leader>cd" = {
          action = "definition";
          desc = "Definition";
        };
        "<leader>ct" = {
          action = "type_definition";
          desc = "Type definition";
        };
        "K" = "hover";
        "<leader>ca" = "code_action";
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
      };
    };
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
}
