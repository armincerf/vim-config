lvim.plugins = {
  -- Themes
  { "gruvbox-community/gruvbox" },

  -- Multiple cursors
  { "mg979/vim-visual-multi" },

  -- Telescope
  { "nvim-telescope/telescope-fzy-native.nvim" },

  {
    "nvim-telescope/telescope-ghq.nvim",
    after = 'telescope.nvim',
    config = function()
      require 'telescope'.load_extension 'ghq'
    end
  },

  -- Clojure
  { 'Olical/conjure' },
  {
    'clojure-vim/vim-jack-in',
    requires = { 'radenling/vim-dispatch-neovim', 'tpope/vim-dispatch' },
  },

  {
    "benfowler/telescope-luasnip.nvim",
    after = "telescope.nvim",
    config = function()
      require "telescope".load_extension("luasnip")
    end,
  },

  -- LSP
  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    requires = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("refactoring").setup({})
    end,
  },

  -- copilot
  { "github/copilot.vim" },

  -- Treesitter
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  {
    "danymat/neogen",
    config = function()
      require("neogen").setup({})
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    tag = "*",
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
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'

    }
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
  },

  -- Navigation
  {
    "ThePrimeagen/harpoon",
    event = "BufWinEnter",
    requires = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
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

  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      })
      -- for cyclist
      vim.opt.listchars = {
        ["tab"] = "» ",
        ["trail"] = "·",
        ["extends"] = "<",
        ["precedes"] = ">",
        ["conceal"] = "┊",
        ["nbsp"] = "␣",
      }
    end,
  },
}
