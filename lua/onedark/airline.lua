local colors = require 'onedark.colors'

local WI = { colors.black.gui, colors.yellow.gui, colors.black.cterm, colors.yellow.cterm }
local ER = { colors.black.gui, colors.red.gui, colors.black.cterm, colors.red.cterm }

local function generate_color_map(sect1, sect2, sect3)
  return {
    airline_a = { sect1[1], sect1[2], sect1[3], sect1[4], '' },
    airline_b = { sect2[1], sect2[2], sect2[3], sect2[4], '' },
    airline_c = { sect3[1], sect3[2], sect3[3], sect3[4], '' },

    airline_x = { sect3[1], sect3[2], sect3[3], sect3[4], '' },
    airline_y = { sect2[1], sect2[2], sect2[3], sect2[4], '' },
    airline_z = { sect1[1], sect1[2], sect1[3], sect1[4], '' },

    airline_warning = WI,
    airline_error = ER,
  }
end

local N1 = { colors.black.gui, colors.green.gui, colors.black.cterm, colors.green.cterm }
local N2 = { colors.white.gui, colors.visual_grey.gui, colors.white.cterm, colors.visual_grey.cterm }
local N3 = { colors.green.gui, colors.black.gui, colors.green.cterm, '' }

local I1 = { colors.black.gui, colors.blue.gui, colors.black.cterm, colors.blue.cterm }
local I2 = N2
local I3 = { colors.blue.gui, colors.black.gui, colors.blue.cterm, '' }

local R1 = { colors.black.gui, colors.red.gui, colors.black.cterm, colors.red.cterm }
local R2 = N2
local R3 = { colors.red.gui, colors.black.gui, colors.red.cterm, '' }

local V1 = { colors.black.gui, colors.purple.gui, colors.black.cterm, colors.purple.cterm }
local V2 = N2
local V3 = { colors.purple.gui, colors.black.gui, colors.purple.cterm, '' }

local IA1 = { colors.black.gui, colors.white.gui, colors.black.cterm, colors.white.cterm }
local IA2 = { colors.white.gui, colors.visual_grey.gui, colors.white.cterm, colors.visual_grey.cterm }
local IA3 = N2

local p = {
  accents = { red = { colors.red.gui, '', colors.red.cterm, 0 } },
  normal = generate_color_map(N1, N2, N3),
  insert = generate_color_map(I1, I2, I3),
  replace = generate_color_map(R1, R2, R3),
  visual = generate_color_map(V1, V2, V3),
  inactive = generate_color_map(IA1, IA2, IA3),
}

return function()
  local group = vim.fn['airline#themes#get_highlight']('vimCommand')

  local modified = {
    airline_c = { group[1], '', group[3], '', '' },
    airline_warning = WI,
    airline_error = ER,
  }

  p.normal_modified = modified
  p.insert_modified = modified
  p.replace_modified = modified
  p.visual_modified = modified
  p.inactive_modified = modified

  vim.g['airline#themes#onedark#palette'] = p
end
