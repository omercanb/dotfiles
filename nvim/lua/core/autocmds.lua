-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()

    -- OSC 52 to enable yanks in ssh to get copied to system clipboard
    local text = vim.fn.getreg '"'
    text = text:gsub('\\', '\\\\')
    text = text:gsub("'", "'\\''")

    local encoded = vim.fn.system("echo -n '" .. text .. "' | base64 | tr -d '\\n'")

    local osc
    if vim.env.TMUX and vim.env.TMUX ~= '' then
      osc = string.format('\x1bPtmux;\x1b\x1b]52;;%s\x1b\x1b\\\\\x1b\\', encoded)
    else
      osc = string.format('\x1b]52;;%s\x1b\\', encoded)
    end

    vim.fn.system('echo -en "' .. osc .. '" > /dev/tty')
  end,
})
