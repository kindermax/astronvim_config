return {
  n = {
    -- Trouble
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>" },
    -- Harpoon
    ["<leader>m"] = { "<CMD>lua require('harpoon.mark').add_file()<CR>" },
    ["<leader>ht"] = { "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>" },
    -- Telescope + Harpoon
    ["<leader>sm"] = { ":Telescope harpoon marks<cr>", desc = "Harpoon [M]arks" },
    ["<Leader>sr"] = { "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>" },
    ["<Leader>sR"] = { "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>" },
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
