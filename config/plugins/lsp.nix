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
      ccls = {
        enable = true;
        onAttach.function = ''
          local function switch_source_header()
            local params = { uri = vim.uri_from_bufnr(0) }
            vim.lsp.buf_request(0, 'textDocument/switchSourceHeader', params, function(err, result)
              if err then
                vim.notify("ccls: " .. err.message, vim.log.levels.ERROR)
                return
              end
              if not result then
                vim.notify("ccls: No corresponding file found", vim.log.levels.WARN)
                return
              end
              vim.api.nvim_command('edit ' .. vim.uri_to_fname(result))
            end)
          end

          -- Register the keymap (e.g., <leader>ch)
          vim.keymap.set('n', '<leader>ch', switch_source_header, {
            buffer = bufnr,
            desc = "CCLSSwitchSourceHeader"
          })
        '';
      };
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

  plugins.treesitter-context = {
    enable = true;
  };
}
