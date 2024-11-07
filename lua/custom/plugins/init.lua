return {
  { 'wakatime/vim-wakatime', lazy = false },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  {
    'goolord/alpha-nvim',
    lazy = false,
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

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

      dashboard.section.buttons.val = {
        dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '\u{f021e}  Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
        dashboard.button('q', '\u{f0a48}  Quit NVIM', ':qa<CR>'),
      }

      dashboard.section.footer.val = "Codelotusr says 'Hello World'"

      dashboard.opts.layout = {
        { type = 'padding', val = 1 },
        dashboard.section.header,
        { type = 'padding', val = 2 },
        dashboard.section.buttons,
        { type = 'padding', val = 1 },
        dashboard.section.footer,
      }

      dashboard.section.header.opts = {
        position = 'center',
      }
      dashboard.section.buttons.opts = {
        hl = 'Keyword',
        spacing = 1,
      }
      dashboard.section.footer.opts = {
        hl = 'Comment',
        position = 'center',
      }

      alpha.setup(dashboard.opts)

      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'alpha',
        callback = function()
          vim.cmd [[
        highlight LotusGreen guifg=#00FF00 guibg=NONE gui=bold
        highlight LotusPink guifg=#FFC0CB guibg=NONE gui=bold
        highlight LotusYellow guifg=#FFFF00 guibg=NONE gui=bold
        ]]

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
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float, { desc = 'Open parent directory in a floating window' })
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

      vim.keymap.set('n', '<Leader>ha', mark.add_file, { desc = 'Harpoon: Add File' })
      vim.keymap.set('n', '<Leader>hm', ui.toggle_quick_menu, { desc = 'Harpoon: Toggle Menu' })

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
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',

      -- optional
      'nvim-treesitter/nvim-treesitter',
      'rcarriga/nvim-notify',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      lang = 'python3',
    },
    -- keys = {
    --   {
    --     '<leader>lt',
    --     '<cmd>Leet Test<cr>',
    --     desc = 'Leetcode test',
    --   },
    --   {
    --     '<leader>ls',
    --     '<CMD>Leet Submit<CR>',
    --     desc = 'Leetcode submit',
    --   },
    -- },
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
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = false,
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
  -- {
  --   'vyfor/cord.nvim',
  --   build = './build || .\\build',
  --   event = 'VeryLazy',
  --   opts = {},
  --   config = function()
  --     require('cord').setup {
  --       display = {
  --         show_repository = false,
  --       },
  --       lsp = {
  --         show_problem_count = true,
  --       },
  --     }
  --   end,
  -- },
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
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
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
    keys = {
      {
        '<leader>on',
        '<cmd>ObsidianNew<CR>',
        desc = 'Create a new Obsidian Note',
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
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('octo').setup {
        suppress_missing_scope = {
          projects_v2 = true,
        },
      }
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
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    lazy = false,
    config = function()
      require('refactoring').setup {
        prompt_func_return_type = {
          go = true,
          java = true,
        },
        prompt_func_param_type = {
          go = true,
          java = true,
        },
        show_success_message = true,
      }
    end,
  },
  {
    'zeioth/garbage-day.nvim',
    dependencies = 'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'kosayoda/nvim-lightbulb',
    config = function()
      require('nvim-lightbulb').setup {
        autocmd = { enabled = true },
      }
    end,
  },
  {
    'linrongbin16/lsp-progress.nvim',
    config = function()
      require('lsp-progress').setup()
    end,
  },
  {
    'amrbashir/nvim-docs-view',
    lazy = true,
    cmd = 'DocsViewToggle',
    opts = {
      position = 'bottom',
      width = 60,
    },
    keys = {
      {
        '<leader>dt',
        '<CMD>DocsViewToggle<CR>',
        desc = '[D]ocs View [T]oggle',
      },
      {
        '<leader>du',
        '<CMD>DocksViewUpdate<CR>',
        desc = '[D]ocs View [U]pdate',
      },
    },
  },
  {
    { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons' },
  },
  {
    'tweekmonster/django-plus.vim',
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'thenbe/neotest-playwright',
      'nvim-neotest/neotest-python',
      'haydenmeade/neotest-jest',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-python' {
            dap = { justMyCode = false },

            args = { '--log-level', 'DEBUG' },

            runner = 'pytest',
          },
          require 'neotest-jest' {
            jestCommand = 'npm test --',
            jestConfigFile = 'custom.jest.config.ts',
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          },
          require('neotest-playwright').adapter {
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
            },
          },
        },
      }
    end,
  },
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim', -- optional
    },
    opts = {}, -- your configuration
  },
  {
    'uga-rosa/ccc.nvim',
    config = function()
      require('ccc').setup {}
    end,
  },
  {
    'stevearc/aerial.nvim',
    opts = {
      on_open = function()
        vim.api.nvim_set_keymap('n', '{', '<Cmd>AerialPrev<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '}', '<Cmd>AerialNext<CR>', { noremap = true, silent = true })
        aerial_open = true
      end,

      on_close = function()
        vim.api.nvim_set_keymap('n', '{', '{', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '}', '}', { noremap = true, silent = true })
        aerial_open = false
      end,
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    config = function(_, opts)
      local aerial_open = false -- State variable to track whether Aerial is open

      -- Set up Aerial with options
      require('aerial').setup(opts)

      -- Key mapping to toggle Aerial
      vim.keymap.set('n', '<leader>ta', function()
        -- Toggle Aerial and update state
        if aerial_open then
          -- If Aerial is currently open, close it and reset mappings
          require('aerial').close()
          vim.api.nvim_set_keymap('n', '{', '{', { noremap = true, silent = true })
          vim.api.nvim_set_keymap('n', '}', '}', { noremap = true, silent = true })
          aerial_open = false
        else
          -- If Aerial is closed, open it and set Aerial mappings
          require('aerial').open()
          vim.api.nvim_set_keymap('n', '{', '<Cmd>AerialPrev<CR>', { noremap = true, silent = true })
          vim.api.nvim_set_keymap('n', '}', '<Cmd>AerialNext<CR>', { noremap = true, silent = true })
          aerial_open = true
        end
      end, { desc = 'Toggle Aerial' })
    end,
  },
  {
    'MagicDuck/grug-far.nvim',
    config = function()
      require('grug-far').setup {}
    end,
    keys = {
      {
        '<leader>rg',
        '<cmd>GrugFar<CR>',
        desc = 'Find and replace!',
      },
    },
  },
  {
    'tomiis4/hypersonic.nvim',
    config = function()
      require('hypersonic').setup {}
    end,
  },
  {
    'ethanholz/nvim-lastplace',
    config = function()
      require('nvim-lastplace').setup {
        lastplace_ignore_buftype = { 'quickfix', 'nofile', 'help' },
        lastplace_ignore_filetype = { 'gitcommit', 'gitrebase', 'svn', 'hgcommit' },
        lastplace_open_folds = true,
      }
    end,
  },
  {
    'smoka7/multicursors.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvimtools/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  },
  {
    'gbprod/cutlass.nvim',
    opts = {
      cut_key = 'm',
    },
    config = function(_, opts)
      require('cutlass').setup(opts)
    end,
  },
  {
    'isakbm/gitgraph.nvim',
    opts = {
      symbols = {
        merge_commit = 'M',
        commit = '*',
      },
      format = {
        timestamp = '%H:%M:%S %d-%m-%Y',
        fields = { 'hash', 'timestamp', 'author', 'branch_name', 'tag' },
      },
      hooks = {
        on_select_commit = function(commit)
          print('selected commit:', commit.hash)
        end,
        on_select_range_commit = function(from, to)
          print('selected range:', from.hash, to.hash)
        end,
      },
    },
    keys = {
      {
        '<leader>gl',
        function()
          require('gitgraph').draw({}, { all = true, max_count = 5000 })
        end,
        desc = 'GitGraph - Draw',
      },
    },
  },
  {
    'rhysd/git-messenger.vim',
  },
  {
    'abecodes/tabout.nvim',
    lazy = false,
    config = function()
      require('tabout').setup {
        tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = '<C-d>', -- reverse shift default action,
        enable_backwards = true, -- well ...
        completion = false, -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = '`', close = '`' },
          { open = '(', close = ')' },
          { open = '[', close = ']' },
          { open = '{', close = '}' },
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {}, -- tabout will ignore these filetypes
      }
    end,
    dependencies = { -- These are optional
      'nvim-treesitter/nvim-treesitter',
      'L3MON4D3/LuaSnip',
      'hrsh7th/nvim-cmp',
    },
    opt = true, -- Set this to true if the plugin is optional
    event = 'InsertCharPre', -- Set the event to 'InsertCharPre' for better compatibility
    priority = 1000,
  },
  {
    'michaelb/sniprun',
    branch = 'master',

    build = 'sh install.sh',
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require('sniprun').setup {
        -- your options
      }
    end,
  },
}
