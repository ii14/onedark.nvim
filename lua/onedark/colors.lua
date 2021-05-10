local o = vim.g.onedark_color_overrides or {}

local colors = {
  red            = o.red            or { gui = '#E06C75', cterm = '204',  cterm16 = '1'  },
  dark_red       = o.dark_red       or { gui = '#BE5046', cterm = '196',  cterm16 = '9'  },
  green          = o.green          or { gui = '#98C379', cterm = '114',  cterm16 = '2'  },
  yellow         = o.yellow         or { gui = '#E5C07B', cterm = '180',  cterm16 = '3'  },
  dark_yellow    = o.dark_yellow    or { gui = '#D19A66', cterm = '173',  cterm16 = '11' },
  blue           = o.blue           or { gui = '#61AFEF', cterm = '39',   cterm16 = '4'  },
  purple         = o.purple         or { gui = '#C678DD', cterm = '170',  cterm16 = '5'  },
  cyan           = o.cyan           or { gui = '#56B6C2', cterm = '38',   cterm16 = '6'  },
  white          = o.white          or { gui = '#ABB2BF', cterm = '145',  cterm16 = '7'  },
  black          = o.black          or { gui = '#282C34', cterm = '235',  cterm16 = '0'  },
  visual_black   = o.visual_black   or { gui = 'NONE',    cterm = 'NONE', cterm16 = '0'  },
  comment_grey   = o.comment_grey   or { gui = '#5C6370', cterm = '59',   cterm16 = '15' },
  gutter_fg_grey = o.gutter_fg_grey or { gui = '#4B5263', cterm = '238',  cterm16 = '15' },
  cursor_grey    = o.cursor_grey    or { gui = '#2C323C', cterm = '236',  cterm16 = '8'  },
  visual_grey    = o.visual_grey    or { gui = '#3E4452', cterm = '237',  cterm16 = '15' },
  menu_grey      = o.menu_grey      or { gui = '#3E4452', cterm = '237',  cterm16 = '8'  },
  special_grey   = o.special_grey   or { gui = '#3B4048', cterm = '238',  cterm16 = '15' },
  vertsplit      = o.vertsplit      or { gui = '#181A1F', cterm = '59',   cterm16 = '15' },
}

if (vim.g.onedark_termcolors or 256) == 16 then
  for _, color in pairs(colors) do
    color.cterm = color.cterm16
    color.cterm16 = nil
  end
end

return colors
