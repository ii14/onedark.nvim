local colors = require 'onedark.colors'

local red = { colors.red.gui, colors.red.cterm }
local green = { colors.green.gui, colors.green.cterm }
local yellow = { colors.yellow.gui, colors.yellow.cterm }
local blue = { colors.blue.gui, colors.blue.cterm }
local purple = { colors.purple.gui, colors.purple.cterm }
local white = { colors.white.gui, colors.white.cterm }
local black = { colors.black.gui, colors.black.cterm }
local grey = { colors.visual_grey.gui, colors.cursor_grey.cterm }

local p = {
  normal = {
    left = { { black, green }, { white, grey } },
    right = { { black, green }, { white, grey } },
    middle = { { white, black } },
    error = { { black, red } },
    warning = { { black, yellow } },
  },
  inactive = {
    left = { { white, grey }, { white, grey } },
    right = { { black, white }, { black, white } },
    middle = { { white, grey } },
  },
  insert = {
    left = { { black, blue }, { white, grey } },
    right = { { black, blue }, { white, grey } },
  },
  replace = {
    left = { { black, red }, { white, grey } },
    right = { { black, red }, { white, grey } },
  },
  visual = {
    left = { { black, purple }, { white, grey } },
    right = { { black, purple }, { white, grey } },
  },
  tabline = {
    left = { { white, grey } },
    tabsel = { { black, white } },
    middle = { { white, black } },
    right = { { white, grey } },
  },
}

vim.g['lightline#colorscheme#onedark#palette'] = vim.fn['lightline#colorscheme#flatten'](p)
