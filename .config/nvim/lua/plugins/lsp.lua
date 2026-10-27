-- Major version of the project's own TypeScript, or nil if it isn't installed.
local function ts_major(root)
  local ok, lines = pcall(vim.fn.readfile, root .. "/node_modules/typescript/package.json")
  if not ok then
    return nil
  end
  local pkg = vim.json.decode(table.concat(lines, "\n"))
  local version = vim.version.parse(pkg.version or "")
  return version and version.major
end

-- TypeScript 7+ ships its own server (tsc) and drops what ts_ls depends on,
-- so attach exactly one of them based on the project's TypeScript version.
local function only_if(name, wants)
  local root_dir = vim.lsp.config[name].root_dir
  vim.lsp.config(name, {
    root_dir = function(bufnr, on_dir)
      root_dir(bufnr, function(root)
        if wants(ts_major(root)) then
          on_dir(root)
        end
      end)
    end,
  })
end

return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      only_if("ts_ls", function(major) return major ~= nil and major < 7 end)
      only_if("tsc", function(major) return major == nil or major >= 7 end)
      vim.lsp.enable({ "gopls", "ts_ls", "tsc" })
    end,
  },
}
