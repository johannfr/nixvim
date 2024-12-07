{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      pylsp.enable = true;
    };
    keymaps = {
        silent = true;

        diagnostic = {
          "<leader>do" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };

        lspBuf = {
          "gi" = "implementation";
          "gD" = "references";
          "gd" = "definition";
          "gt" = "type_definition";
          "K" = "hover";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
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
