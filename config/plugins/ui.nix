{pkgs, ...}:
{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;

    indent-blankline = {
      enable = true;
      settings = {
        scope = {
          enabled = true;
          show_exact_scope = true;
          show_start = false;
          show_end = false;
        };
      };
      luaConfig.post = ''
        local highlight = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowOrange",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        }
      local hooks = require "ibl.hooks"
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
            end)

        vim.g.rainbow_delimiters = { highlight = highlight }
      require("ibl").setup { scope = { highlight = highlight } }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
      '';
    };

    which-key = {
      enable = true;
      settings = {
        spec = [
          {
            __unkeyed-1 = "<leader>b";
            group = "Buffers";
            icon = "󰓩 ";
          }
          {
            __unkeyed = "<leader>c";
            group = "Code";
            icon = " ";
          }
          {
            __unkeyed = "<leader>ca";
            group = "Action";
            icon = " ";
          }
          {
            __unkeyed = "<leader>d";
            group = "Diagnostics";
          }
          {
            __unkeyed = "<leader>f";
            group = "Fuzzy";
            icon = " ";
          }
          {
            __unkeyed = "<leader>g";
            group = "Git";
          }
          {
            __unkeyed = "<leader>do";
            group = "Open float";
          }
          {
            __unkeyed = "[d";
            group = "Previous diagnostic";
          }
          {
            __unkeyed = "]d";
            group = "Next diagnostic";
          }
        ];
      };
    };
    rainbow-delimiters.enable = true;
    gitsigns.enable = true;
    gitmessenger.enable = true;
    fugit2 = {
      enable = true;
    };

    fzf-lua = {
      enable = true;
      keymaps = {
        "<C-p>" = {
          action = "git_files";
          options = {
            desc = "Fzf-Lua Git Files";
            silent = true;
          };
          settings = {
            previewers = {
              cat = { cmd = "bat"; };
            };
            winopts = {
              height = 0.5;
            };
          };
        };
        "<leader>fg" = {
          action = "live_grep";
          options.desc = "Live grep, follow VCS";
          settings = {
            cmd = "ag --follow --hidden";
          };
        };
        "<leader>fa" = {
          action = "live_grep";
          options.desc = "Live grep, ALL";
          settings = {
            cmd = "ag --follow -U --hidden";
          };
        };
      };
    };
  };
}
