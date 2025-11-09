return {
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",  -- load only for quickfix buffers
    opts = {
      auto_resize_height = true,
      preview = {
        auto_preview = true,
        show_title = false,
        win_height = 15,
        win_vheight = 15,
        delay_syntax = 80,
        border_chars = { '│', '│', '─', '─', '┌', '┐', '└', '┘', '█' },
      },
      func_map = {
        open = '<CR>',
        openc = 'o',
        drop = 'O',
        split = '<C-s>',
        vsplit = '<C-v>',
        tabdrop = '<C-t>',
        tab = 't',
        prevfile = 'K',
        nextfile = 'J',
      },
    },
    config = function(_, opts)
      require("bqf").setup(opts)
    end,
  },
}
