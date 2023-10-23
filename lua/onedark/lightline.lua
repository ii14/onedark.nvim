local colors = require 'onedark.colors'

local red = { colors.red.gui, colors.red.cterm }
local green = { colors.green.gui, colors.green.cterm }
local yellow = { colors.yellow.gui, colors.yellow.cterm }
local blue = { colors.blue.gui, colors.blue.cterm }
local purple = { colors.purple.gui, colors.purple.cterm }
local white = { colors.white.gui, colors.white.cterm }
local cursor_grey = { colors.cursor_grey.gui, colors.cursor_grey.cterm }
local visual_grey = { colors.visual_grey.gui, colors.visual_grey.cterm }

local p = {
  normal = {
    left = { { cursor_grey, green }, { white, visual_grey } },
    right = { { cursor_grey, green }, { white, visual_grey } },
    middle = { { white, cursor_grey } },
    error = { { cursor_grey, red } },
    warning = { { cursor_grey, yellow } },
  },
  inactive = {
    left =  { { white, visual_grey }, { white, visual_grey } },
    right = { { cursor_grey, white }, { cursor_grey, white } },
    middle = { { white, visual_grey } },
  },
  insert = {
    left = { { cursor_grey, blue }, { white, visual_grey } },
    right = { { cursor_grey, blue }, { white, visual_grey } },
  },
  replace = {
    left = { { cursor_grey, red }, { white, visual_grey } },
    right = { { cursor_grey, red }, { white, visual_grey } },
  },
  visual = {
    left = { { cursor_grey, purple }, { white, visual_grey } },
    right = { { cursor_grey, purple }, { white, visual_grey } },
  },
  tabline = {
    left = { { white, visual_grey } },
    tabsel = { { cursor_grey, white } },
    middle = { { white, cursor_grey } },
    right = { { white, visual_grey } },
  },
}

vim.g['lightline#colorscheme#onedark#palette'] = vim.fn['lightline#colorscheme#flatten'](p)
