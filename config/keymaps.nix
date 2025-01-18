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
      options.desc = "Switch source/header";
    }
  ];
}
