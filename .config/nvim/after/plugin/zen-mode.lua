require("zen-mode").setup {
      window = {
    backdrop = 0,
    width = 80,
    height = 1,
    options = {signcolumn = "no", number = false, relativenumber = false, cursorline = false, wrap = true}
  },
  plugins = {
    options = {enabled = true, ruler = false, showcmd = false},
    twilight = {enabled = true},
    gitsigns = {enabled = false},
    tmux = {enabled = false}
  },
  on_open = function(_)
    vim.cmd 'cabbrev <buffer> q let b:quitting = 1 <bar> q'
    vim.cmd 'cabbrev <buffer> wq let b:quitting = 1 <bar> wq'
  end,
  on_close = function()
    if vim.b.quitting == 1 then
      vim.b.quitting = 0
      vim.cmd 'q'
    end
  end,
}
