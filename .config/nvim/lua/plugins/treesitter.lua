return {
{
 "nvim-treesitter/nvim-treesitter",
 branch = "main",
 lazy = false,
 build = ":TSUpdate",
 config = function()
   require("nvim-treesitter").install({ "go", "gomod", "gowork",
"gotmpl", "typescript", "tsx", "javascript" })

   vim.api.nvim_create_autocmd("FileType", {
     pattern = { "go", "gomod", "gowork", "gotmpl",
"typescript", "typescriptreact", "javascript", "javascriptreact" },
     callback = function() vim.treesitter.start() end,
   })
 end,
},
}

