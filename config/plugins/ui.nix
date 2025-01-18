{pkgs, ...}:
{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
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
