{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    alejandra
    stylua
    nodePackages.prettier
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        cpp = [
          "dockerastyle"
          "clang-format"
        ];

        python = [
          "isort"
          "ruff_format"
        ];

        nix = [ "alejandra" ];
        lua = [ "stylua" ];
        json = [ "prettier" ];
        jsonc = [ "prettier" ];
        yaml = [ "prettier" ];
        markdown = [ "prettier" ];

      };
      format_on_save = {
        lspFallback = true;
        timeout_ms = 10000;
      };
      formatters = {
        dockerastyle = {
          command = "/home/jof/vinna/docker/isds/dockerastyle.sh";
          condition = { __raw = ''
            function(self, ctx)
              local allowed_projects = { "isds", "ice", "netrrr" }

              local file_dir = vim.fs.dirname(ctx.filename)
              local cmd = { "git", "-C", file_dir, "rev-parse", "--show-toplevel" }
              local git_root = vim.fn.system(cmd)

              if vim.v.shell_error ~= 0 then
                return false
              end

              local project_name = vim.fs.basename(vim.trim(git_root))

              for _, name in ipairs(allowed_projects) do
                if project_name == name then
                  return true
                end
              end

              return false
            end
        ''; };
        };
      };
    };
  };
  extraConfigLua = ''
    require("conform").formatters_by_ft.cpp["stop_after_first"] = true
    require("conform").formatters_by_ft.python["stop_after_first"] = false
    require("conform").formatters_by_ft.python["timeout_ms"] = 10000
  '';
}
