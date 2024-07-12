
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    'lukas-reineke/indent-blankline.nvim',
    'vim-airline/vim-airline',
    'jaredgorski/spacecamp',
    'vim-airline/vim-airline-themes',
    'chriskempson/base16-vim',
    'jacoborus/tender.vim',
    'lervag/vimtex',
    'tomasiser/vim-code-dark',
    'Mofiqul/vscode.nvim',
    'nvim-lua/plenary.nvim',
    'mhartington/oceanic-next',
    'sainnhe/edge',
    'morhetz/gruvbox',
    'sainnhe/sonokai',
    'tjdevries/colorbuddy.vim',
    'sainnhe/edge',
    'vigoux/oak',
    'dhruvasagar/vim-table-mode',
    'chrisbra/csv.vim',
    'dense-analysis/ale',
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    -- 'tpope/vim-fugitive',
    'tpope/vim-surround',
    'tpope/vim-commentary',
    'nvim-telescope/telescope.nvim',
    'mbbill/undotree',
    'tpope/vim-unimpaired',
    'ThePrimeagen/refactoring.nvim',
    'neovim/nvim-lspconfig', -- Collection of configurations for built-in LSP client
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
    'L3MON4D3/LuaSnip', -- Snippets plugin
    'onsails/lspkind-nvim',
    'p00f/clangd_extensions.nvim',
    'jpalardy/vim-slime',
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    -- Language server registry
    'lspcontainers/lspcontainers.nvim',
    -- Rust Tools
    'simrat39/rust-tools.nvim',
    {
        'glacambre/firenvim',
        -- Lazy load firenvim
        -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
        lazy = not vim.g.started_by_firenvim,
        build = function()
            vim.fn["firenvim#install"](0)
        end
    },
    'tweekmonster/startuptime.vim',
    'TimUntersberger/neogit',
    'sindrets/diffview.nvim',
    'hkupty/iron.nvim',
    {
        'GCBallesteros/vim-textobj-hydrogen',
        dependencies = {
            "kana/vim-textobj-user",
            "kana/vim-textobj-line",
        }
    },
    'GCBallesteros/jupytext.vim',
    'MunifTanjim/nui.nvim',
    'jackMort/ChatGPT.nvim',
    "nvim-neotest/nvim-nio",
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'mfussenegger/nvim-dap-python',
    "nyoom-engineering/oxocarbon.nvim",
    {
        "amitds1997/remote-nvim.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true,
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" },
            { "nvim-lua/plenary.nvim" },
        },
        opts = {},
    },
}

require("lazy").setup(plugins)
