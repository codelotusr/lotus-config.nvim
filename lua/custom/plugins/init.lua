-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Wakatime plugin
  { 'wakatime/vim-wakatime', lazy = false },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  -- Alpha-nvim plugin for startup dashboard
  {
    'goolord/alpha-nvim',
    lazy = false,
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Set header
      dashboard.section.header.val = {
        [[                       ##                                                    **#                    ]],
        [[                                                                             ##                     ]],
        [[                             ##                  ##                        #                        ]],
        [[                  #*+   #+#  ##                     ##                    +*#                       ]],
        [[                        ##                    ##                             #                      ]],
        [[            ##        ##    ##  **            #+  **#  #                                            ]],
        [[             #        ##       ##*#                #               ##                 #*+#          ]],
        [[                ##        #*##               #   #*#  #*#              ##*   ##   #    ##           ]],
        [[                        # #**##+*               #****#             #+*####       ###  ##  ##        ]],
        [[             ##*# ##    # #++*########        ###*####*#      #++*+=*####*           #*#   #        ]],
        [[                  ##       ****###*+++++*#  ##**####*#**#  #+=--=+*#*#*#**                          ]],
        [[              ### #**#     ##=-+*+========*#**-++*****####+-::::-===**+##*    #*##   ##             ]],
        [[              #*+##+*##**# ###**=========+####*==**#*++**++=:::::--======* ######*#                 ]],
        [[      #            ##*+##*#*#+-::-======+=---=**:=#+==++++=+=:::-======+##*+######                ##]],
        [[         ###       #*##*****++*=-:-====++::--:-=***#*+=+*+==+=-======++==*****##*#        #+*       ]],
        [[   *##    #         #+++#**=+#**+-:-====-:-+*=+#****##+=====++=====++-::::==###*##             #    ]],
        [[   *+# ###          #=**====+#+==*=--=++::-=+###+=###+**=====++===++:::::::-+==+#                   ]],
        [[           ###       ###*=::-=====++====:::-*###########*====++=++-:::::::-====#       ##  ##       ]],
        [[      ###  ###       #+:-::::--=====+++-::-*++##*#*****++*+==+++=-::::::-=====*           ## #*#    ]],
        [[#     #*#   ####       +::::::--=====*+-:-*#*###++-++*####*==+*=:::::::-=====*#      ####    ##     ]],
        [[+#          #**=++#     *:::::::-=====++-+##**##+=*+==++**#+=+=::::::-======#      ##**#            ]],
        [[             #####**#*+*##-::::::-=====+**++==**+**+***##*+**=-:::::-=====+ *+***##**###         #  ]],
        [[**##*+*#*+*#####*#++*++++=+++=-:::-=====++-:-=--:-**+++=+==++=-:::--===+*##*++*##*#**###**+*###*+***]],
        [[#***+###+-=*+=+****##++*+=====+*=---===++-::::::::-========++=-::-==+*=::::++=+****##*+=--=+*#+*###+]],
        [[  #####***#*===+*+###++==========+*=-==++:::::::::-=========++--=+*=::::::::::-===***+=-:::=**=+*## ]],
        [[   #=*#*+-:---==+***=::-===========+++=++::::::::::=========++=++-:::::::::::-====+*+-:::::-=+**#   ]],
        [[      *-::::::::-=*+:::::-===========+**+-:::::::::=========+++=:::::::::::-=====++=-:::--===+#     ]],
        [[   ##   +-::::::::-==::::::-===========+*+-::::::::========+*=:::::::::::-======*+-::--====+*###    ]],
        [[########*+*=::::::::-*=::::::--=========+*+--::::::=======*+-::::::::::-======*+---==++==+#*=:-+##*#]],
        [[#**+=*#*+===++=:::::::-+-::::::--=========+*=-::::-======+=:::::::::--======++=-====+***+==*****#***]],
        [[  #*++*=--=++++++=+*+-::=+-::::::--========+*=-:::-====++-::::::::--======+*+===+**+++=-:-=++*+=**# ]],
        [[    #*+-::-=====++**=--:::=+-::::::--========*=-::-===++-::::::--=======+*+=====+*+-----====+***#   ]],
        [[      +-:::=**=+#*====+#+-::-*+-::::::-=======*+::-==*=-::::--========**====**+=++=*#*+=======#     ]],
        [[        *=::-+*********+***#*++**+++===========*+:-=*+-::--==++++***##**##***+****#****+===+#       ]],
        [[          #+--=*#*##*#**+**+=--------===++****++ --+*=++***++===---------+#****#**##*++=+*#         ]],
        [[              *==*##*###**+-::::::::::::::::::-+##+#*=-:::::::::::::::::-**######*#*++#             ]],
        [[                    #**+*++==---:::::::::::::::::---::::::::::::::::---====#*+++#                   ]],
        [[                 *-:-=+**==========------:::::::::::::::::::------===========**+==+#                ]],
        [[               *=::::::-+*+================------:::------================+*+=======+#              ]],
        [[              +:::::--====+#*+===================*#*+==================+*#====--======*             ]],
        [[            *-::--========*=---+***++====++*##+=--===+*##*++====++*#*+===*=-::::::-====+#           ]],
        [[           +--==++****####+-::--===+*#     #=:::::======*      #+==---====*##****++===-==*          ]],
        [[          ##             #::--==+*#         +:::::======*         *=-::-===             ##          ]],
        [[                         -:-==+#            #-::::=====+#            *-:-==+                        ]],
        [[                        #--=+                *::::=====#               #=-==                        ]],
        [[                        =-+#                  *-::====#                  #==*                       ]],
        [[                        =*                     #-:==+#                     ++                       ]],
        [[                        #                        ==*                                                ]],
      }

      -- Set up buttons for common tasks
      dashboard.section.buttons.val = {
        dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '\u{f021e}  Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
        dashboard.button('q', '\u{f0a48}  Quit NVIM', ':qa<CR>'),
      }

      -- Footer with a custom message
      dashboard.section.footer.val = "Codelotusr says 'Hello World'"

      -- Layout definition
      dashboard.opts.layout = {
        { type = 'padding', val = 1 },
        dashboard.section.header,
        { type = 'padding', val = 2 },
        dashboard.section.buttons,
        { type = 'padding', val = 1 },
        dashboard.section.footer,
      }

      -- Options for each section (optional)
      dashboard.section.header.opts = {
        position = 'center', -- Center the header
      }
      dashboard.section.buttons.opts = {
        hl = 'Keyword', -- Highlight group for the buttons
        spacing = 1, -- Space between buttons
      }
      dashboard.section.footer.opts = {
        hl = 'Comment', -- Highlight group for the footer
        position = 'center', -- Center the footer
      }

      alpha.setup(dashboard.opts)

      -- Apply highlights only to the Alpha dashboard
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'alpha',
        callback = function()
          -- Highlight groups
          vim.cmd [[
        highlight LotusGreen guifg=#00FF00 guibg=NONE gui=bold
        highlight LotusPink guifg=#FFC0CB guibg=NONE gui=bold
        highlight LotusYellow guifg=#FFFF00 guibg=NONE gui=bold
        ]]

          -- Apply highlights using matchadd
          vim.api.nvim_buf_add_highlight(0, -1, 'LotusGreen', 0, 0, -1)
          vim.fn.matchadd('LotusGreen', '[%#%@%&%*]')
          vim.fn.matchadd('LotusPink', '[:=]')
          vim.fn.matchadd('LotusYellow', '[@]')
        end,
      })
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'dmmulroy/ts-error-translator.nvim',
    config = function()
      require('ts-error-translator').setup()
    end,
  },
  {
    'ThePrimeagen/harpoon',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      -- Basic keybindings
      vim.keymap.set('n', '<Leader>ha', mark.add_file, { desc = 'Harpoon: Add File' })
      vim.keymap.set('n', '<Leader>hm', ui.toggle_quick_menu, { desc = 'Harpoon: Toggle Menu' })

      -- Navigate to marks
      vim.keymap.set('n', '<Leader>h1', function()
        ui.nav_file(1)
      end, { desc = 'Harpoon: Go to Mark 1' })
      vim.keymap.set('n', '<Leader>h2', function()
        ui.nav_file(2)
      end, { desc = 'Harpoon: Go to Mark 2' })
      vim.keymap.set('n', '<Leader>h3', function()
        ui.nav_file(3)
      end, { desc = 'Harpoon: Go to Mark 3' })
      vim.keymap.set('n', '<Leader>h4', function()
        ui.nav_file(4)
      end, { desc = 'Harpoon: Go to Mark 4' })

      vim.keymap.set('n', '<C-h>', ui.nav_prev, { desc = 'Harpoon: Go to Previous Mark' })
      vim.keymap.set('n', '<C-l>', ui.nav_next, { desc = 'Harpoon: Go to Next Mark' })

      require('telescope').load_extension 'harpoon'
      vim.keymap.set('n', '<Leader>ht', ':Telescope harpoon marks<CR>', { desc = 'Harpoon: Telescope Marks' })
    end,
  },
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim', -- required by telescope
      'MunifTanjim/nui.nvim',

      -- optional
      'nvim-treesitter/nvim-treesitter',
      'rcarriga/nvim-notify',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      lang = 'python3',
    },
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true,
          },
        },
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      }
    end,
  },
  {
    {
      'zbirenbaum/copilot.lua',
      event = 'InsertEnter',
      config = function()
        require('copilot').setup {
          suggestion = {
            auto_trigger = false,
            keymap = {
              accept = '<A-\\>',
              next = '<A-]>',
              prev = '<A-[>',
            },
          },
          panel = { enabled = false },
        }
      end,
    },
  },
  {
    'vyfor/cord.nvim',
    build = './build || .\\build',
    event = 'VeryLazy',
    opts = {},
    config = function()
      require('cord').setup {
        display = {
          show_repository = false,
        },
        lsp = {
          show_problem_count = true,
        },
      }
    end,
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'onsails/lspkind.nvim',
    opts = {},
  },
  {
    'epwalsh/obsidian.nvim',
    version = '*',
    lazy = true,
    ft = 'markdown',
    requires = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
      'nvim-telescope/telescope.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '/mnt/c/Users/Lotus/Sync/0',
        },
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },
    },
  },
  {
    'ruifm/gitlinker.nvim',
    opts = {},
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('gitlinker').setup()
    end,
  },
  {
    'meain/vim-printer',
  },
  {
    'rest-nvim/rest.nvim',
  },
  {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      -- OR 'ibhagwan/fzf-lua',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('octo').setup()
    end,
  },
  {
    'eandrju/cellular-automaton.nvim',
    keys = {
      {
        '<leader>fmlr',
        '<cmd> CellularAutomaton  make_it_rain<cr>',
        desc = 'MAKE IT RAIN BABY!!!',
      },
      {
        '<leader>fmlg',
        '<cmd>CellularAutomaton game_of_life<cr>',
        desc = 'Game Of Life!!!',
      },
    },
  },
}
