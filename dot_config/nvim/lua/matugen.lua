 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#1c1013',
    base01 = '#291c1f',
    base02 = '#34262a',
    base03 = '#a68990',
    base04 = '#debfc5',
    base05 = '#f4dde1',
    base06 = '#f4dde1',
    base07 = '#f4dde1',
    base08 = '#ffb4ab',
    base09 = '#ffb695',
    base0A = '#ffb1c6',
    base0B = '#ffb1c6',
    base0C = '#ffb695',
    base0D = '#ffb1c6',
    base0E = '#ffb1c6',
    base0F = '#ffd9e1',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#f4dde1',          bg = '#1c1013' })
  hi('TelescopeBorder',         { fg = '#a68990',             bg = '#1c1013' })
  hi('TelescopePromptNormal',   { fg = '#f4dde1',          bg = '#1c1013' })
  hi('TelescopePromptBorder',   { fg = '#a68990',             bg = '#1c1013' })
  hi('TelescopePromptPrefix',   { fg = '#ffb1c6',             bg = '#1c1013' })
  hi('TelescopePromptCounter',  { fg = '#debfc5',  bg = '#1c1013' })
  hi('TelescopePromptTitle',    { fg = '#1c1013',             bg = '#ffb1c6' })
  hi('TelescopePreviewTitle',   { fg = '#1c1013',             bg = '#ffb1c6' })
  hi('TelescopeResultsTitle',   { fg = '#1c1013',             bg = '#ffb695' })
  hi('TelescopeSelection',      { fg = '#f4dde1',          bg = '#34262a' })
  hi('TelescopeSelectionCaret', { fg = '#ffb1c6',             bg = '#34262a' })
  hi('TelescopeMatching',       { fg = '#ffb1c6',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#f4dde1',          bg = '#1c1013' })
  hi('MiniPickBorder',         { fg = '#a68990',             bg = '#1c1013' })
  hi('MiniPickPrompt',   { fg = '#f4dde1',          bg = '#1c1013' })
  hi('MiniPickPromptPrefix',   { fg = '#ffb1c6',             bg = '#1c1013' })
  hi('MiniPickBorderText',    { fg = '#1c1013',             bg = '#ffb1c6' })
  hi('MiniPickMatchCurrent',      { fg = '#f4dde1',          bg = '#34262a' })
  hi('MiniPickPromptCaret', { fg = '#ffb1c6',             bg = '#34262a' })
  hi('MiniPickMatchRanges',       { fg = '#ffb1c6',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
