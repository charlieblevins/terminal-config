return {
{
 "nvim-treesitter/nvim-treesitter",
 branch = "main",
 lazy = false,
 build = ":TSUpdate",
 config = function()
   require("nvim-treesitter").install({ "go", "gomod", "gowork",
"gotmpl" })

   vim.api.nvim_create_autocmd("FileType", {
     pattern = { "go", "gomod", "gowork", "gotmpl" },
     callback = function() vim.treesitter.start() end,
   })
 end,
},
}

