-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
function Transparent(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
Transparent()

vim.cmd([[
augroup html_boilerplate
    autocmd!
    autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html_boilerplate.html
augroup END
]])
