-- ~/.config/nvim/lua/plugins/avante.lua
return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- 不要设置为 "*"
  opts = {
    provider = "ark",
    vendors = {
      ark = {
        __inherited_from = "openai",
        api_key_name = "ARK_API_KEY",
        endpoint = "https://ark.cn-beijing.volces.com/api/v3",
        model = "ep-20250216023039-f7kvk",
      },
    },
  },
  hints = {
    enable = true,
  },
  inline = {
    enable = true,
    keymaps = {
      ask = "<leader>ca", -- 行内提问快捷键
      apply = "<leader>cr", -- 应用修改快捷键
    },
  },
  build = "make", -- 从源码编译（Linux/macOS）
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false", -- Windows 用户取消注释此行
  keymaps = {
    {
      "<leader>aa",
      function()
        require("avante").ask()
      end,
      desc = "Avante: Ask",
    },
    {
      "<leader>an",
      function()
        require("avante").new_chat()
      end,
      desc = "Avante: New Chat",
    },
    {
      "<leader>ar",
      function()
        require("avante").apply_suggestion()
      end,
      desc = "Avante: Apply",
    },
    {
      "<leader>ot",
      function()
        require("avante").toggle()
      end,
      desc = "Avante: Apply",
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
