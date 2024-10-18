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
  -- Auto save without needing to :w write to file
  --  {
  --   'Pocco81/auto-save.nvim',
  --   config = function()
  --     require('auto-save').setup()
  --
  --     vim.api.nvim_set_keymap('n', '<leader>+', ':ASToggle<CR>', {
  --        noremap = true,
  --        silent = true,
  --        desc = 'Toggle Auto-Save',
  --      })
  --    end,
  --  },
  {
    'ThePrimeagen/harpoon',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'jinh0/eyeliner.nvim',
    config = function()
      require('eyeliner').setup {
        highlight_on_key = true,
      }
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
      -- configuration goes here
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
}
