{
  plugins.visual-multi = {
    enable = true;
  };

  plugins.diffview = {
    enable = true;
  };

  plugins.copilot-lua = {
    enable = true;
    settings = {
      panel = {
        enable = false;
      };

      suggestion = {
        enable = false;
      };
    };
  };

  plugins.copilot-chat = {
    enable = true;
  };

  plugins.mini = {
    enable = true;
    modules = {
      move = {
        mappings = {
          left = "<M-Left>";
          right = "<M-Right>";
          down = "<M-Down>";
          up = "<M-Up>";
          line_left = "<M-Left>";
          line_right = "<M-Right>";
          line_down = "<M-Down>";
          line_up = "<M-Up>";

        };
      };
    };
  };
}
