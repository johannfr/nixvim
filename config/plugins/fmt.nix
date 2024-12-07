{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        python = ["isort" "black"];
      };
      format_on_save = {
        lspFallback = true;
        timeoutMs = 2000;
      };
    };
  };
}
