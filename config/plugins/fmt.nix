{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        python = {
          __unkeyed-1 = "isort";
          __unkeyed-2 = "black";
          timeout_ms = 10000;
          stop_after_first = false;
        };
      };
      format_on_save = {
        lspFallback = true;
        timeout_ms = 10000;
      };
    };
  };
}
