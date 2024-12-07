{pkgs, lib, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./settings.nix
    ./keymaps.nix
    ./plugins/ui.nix
    ./plugins/lsp.nix
    ./plugins/cmp.nix
    ./plugins/fmt.nix

  ];

  extraPackages = with pkgs; [
    # C/C++ tools
    clang-tools # clangd, clang-format, clang-tidy

    # Python tools
    black
    isort
  ];

}
