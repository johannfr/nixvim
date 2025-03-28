{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [
          "dockerastyle"
        ];
        python = {
          __unkeyed-1 = "isort";
          __unkeyed-2 = "ruff_format";
          timeout_ms = 10000;
          stop_after_first = false;
        };
      };
      format_on_save = {
        lspFallback = true;
        timeout_ms = 10000;
      };
      formatters = {
        dockerastyle = {
          command = "/home/jof/bin/dockerastyle.sh";
        };
      };
    };
  };
}
