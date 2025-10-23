{
  keymaps = [
    {
      action = "<cmd>BufferLinePick<CR>";
      key = "<leader>bp";
    }
    {
      action = "<cmd>BufferLinePickClose<CR>";
      key = "<leader>bc";
    }
    {
      action = "<cmd>ClangdSwitchSourceHeader<CR>";
      key = "<leader>ch";
      options.desc = "Open source/header";
    }
    {
      action = "<cmd>AerialToggle!<CR>";
      key = "<leader>co";
      options.desc = "Toggle Outline";
    }
    {
      mode = "i";
      action = "<C-o>o<C-u>";
      key = "<C-Enter>";
      options.desc = "Insert new line below";
      options.noremap = true;
      options.silent = true;
    }
    {
      mode = "v";
      action = "<gv";
      key = "<";
      options.desc = "De-indent";
    }
    {
      mode = "v";
      action = ">gv";
      key = ">";
      options.desc = "Indent";
    }
    {
      mode = "n";
      action = "<Esc>";
      key = "<F1>";
      options.desc = "Map F1 to Esc";
    }
    {
      mode = "i";
      action = "<Esc>";
      key = "<F1>";
      options.desc = "Map F1 to Esc";
    }
    {
      mode = "v";
      action = "<Esc>";
      key = "<F1>";
      options.desc = "Map F1 to Esc";
    }
  ];
}
