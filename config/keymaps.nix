{
  keymaps = [
    {
      action = "<cmd>lua Snacks.picker.smart()<CR>";
      key = "<C-p>";
      options.desc = "Snacks Smart File Picker";
    }
    {
      action = "<cmd>lua Snacks.picker.git_branches()<CR>";
      key = "<leader>gb";
      options.desc = "Branches";
    }
    {
      action = "<cmd>lua Snacks.picker.git_diff()<CR>";
      key = "<leader>gd";
      options.desc = "Diff";
    }
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
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format({ lsp_fallback = true})<CR>";
      options.desc = "Format buffer";
      options.silent = true;
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
