{pkgs, ...}:
{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
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
        "<leader>fg" = "live_grep";
      };
    };
  };
}
