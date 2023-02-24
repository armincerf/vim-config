vim.g.copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
lvim.plugins = {
  -- Themes
  { "gruvbox-community/gruvbox" },

  -- Multiple cursors
  { "mg979/vim-visual-multi" },

  -- Telescope
  { "nvim-telescope/telescope-fzy-native.nvim" },

  {
    "nvim-telescope/telescope-ghq.nvim",
    dependencies = 'telescope.nvim',
    config = function()
      require 'telescope'.load_extension 'ghq'
    end
  },

  -- Clojure
  { 'Olical/conjure' },
  {
    'clojure-vim/vim-jack-in',
    dependencies = { 'radenling/vim-dispatch-neovim', 'tpope/vim-dispatch' },
  },

  {
    "benfowler/telescope-luasnip.nvim",
    dependencies = "telescope.nvim",
    config = function()
      require "telescope".load_extension("luasnip")
    end,
  },

  -- LSP
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
          },
        },
      })
    end,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
  },

  -- Treesitter
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  { "gpanders/nvim-parinfer" },
  {
    "danymat/neogen",
    config = true,
    dependencies = "nvim-treesitter/nvim-treesitter",
    version = "*",
  },

  {
    "tpope/vim-surround",
    keys = { "c", "d", "y", "S" },
  },

  {
    "felipec/vim-sanegx",
    event = "BufRead",
  },

  { "mtdl9/vim-log-highlighting" },

  { "p00f/nvim-ts-rainbow" },

  -- Git
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
  {
    'TimUntersberger/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'

    }
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = "telescope.nvim",
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
  },

  -- Navigation
  {
    "ThePrimeagen/harpoon",
    event = "BufWinEnter",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
    config = function()
      require("armincerf.plugins.harpoon").config()
    end,
  },

  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("armincerf.plugins.numb").config()
    end,
  },

  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("armincerf.plugins.lastplace")
    end,
  },

  -- Docs
  { "milisims/nvim-luaref" },
  { "nanotee/luv-vimdocs" },

  -- Misc
  { "tjdevries/cyclist.vim" },
}
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
