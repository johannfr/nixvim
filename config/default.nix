{
  pkgs,
  lib,
  ...
}: {
  # Import all your configuration modules here
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./plugins/ui.nix
    ./plugins/lsp.nix
    ./plugins/cmp.nix
    ./plugins/fmt.nix
    ./plugins/other.nix
  ];

  extraPackages = with pkgs; [
    # C/C++ tools
    #gcc
    #clang-tools # clangd, clang-format, clang-tidy

    # Python tools
    #black
    #isort
    libgit2

    # Other tools
    wl-clipboard
  ];

  # extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
  #   name = "bracketpair";
  #   src = pkgs.fetchFromGitHub {
  #     owner = "fedepujol";
  #     repo = "bracketpair.nvim";
  #     rev = "805b233f4fc1a36706e6fbc7259a244777677a53";
  #     hash = "sha256-iOAqLlj7RMMj93gxxxEIyL1ReOreBpSnXfpk1jJA1CE=";
  #   };
  # })];

  # extraConfigLua = ''
  #   require('bracketpair').init()
  # '';
}
