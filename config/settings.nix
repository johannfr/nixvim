{ pkgs, lib, options, ... }:
{
config = {

  globals.mapleader = ",";
  colorschemes.kanagawa.enable = true;
 
  # colorschemes.gruvbox-material.enable = true;

  # colorschemes.nightfox = {
  #   enable = true;
  #   flavor = "terafox";
  # };

  # colorschemes.tokyonight = {
  #   enable = true;
  #   settings = {
  #     style = "night";
  #   };
  # };

  # colorschemes.moonfly.enable = true;

  # colorschemes = lib.genAttrs
  # (lib.filter
  #   (name: name != "base16")
  #   (builtins.attrNames options.colorschemes)
  # )
  # (name: {
  #   enable = true;
  # });
  # colorscheme = lib.mkForce "gruvbox-material";
  

  opts = {

    clipboard = "unnamedplus";
    # Indentation
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    smartindent = true;

    # UI options
    cursorline = true;
    number = true;
    colorcolumn = "88";
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
