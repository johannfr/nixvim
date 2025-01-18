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
