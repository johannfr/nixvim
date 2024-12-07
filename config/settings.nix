{
config = {
globals.mapleader = ",";

  colorschemes.gruvbox.enable = true;
  opts = {

    # Indentation
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    smartindent = true;

    # UI options
    cursorline = true;
    number = true;
    colorcolumn = "80";
    completeopt = "menu,menuone,noselect";

    # Search
    incsearch = true;
    hlsearch = true;
    
    # Code folding
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
  };
};
}
