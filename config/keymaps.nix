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
  ];
}
