local wezterm = require('wezterm')
local platform = require('utils.platform')

local Fira = {
   family = 'FiraCode Nerd Font',
   feature = {
      'liga',
      'cv02', -- alter g
      'ss04',
      'ss12',
      'ss14',
      'cv21',

      'ss09',
      'cv27',
      'ss06',
   },
   -- italic_font = 'Fisa Code',
   italic_font = 'Dank Mono',
   -- italic_weight = 'Regular',
   italic_weight = 500,
   -- italic_feature = {
   --    'liga',
   --    'ss02',
   --    'ss03',
   --    'cv03',
   --    'cpsp',
   -- },
}

local Lisa = {
   family = 'MonoLisa Nerd Font',
   feature = {
      'liga',
      'ss02',
      'ss03', -- alter g
      'ss07',
      'ss11',
      'ss12',
      'ss14',
   },
   italic_font = 'Maple Mono NF',
   italic_weight = 'Regular',
   italic_feature = {
      'liga',
      'ss02',
      'ss03',
      'cv03',
      'cpsp',
   },
}
local default_font = Fira

-- local font = 'JetBrainsMono Nerd Font'
local font_size = 12
local font = {
   family = default_font.family,
   harfbuzz_features = default_font.feature,
}

-- local italic_font = 'CartographCF Nerd Font'
-- local italic_font = 'Maple Mono NF'
-- local italic_font = 'MonoLisa Nerd Font'
-- local italic_font = 'VictorMono Nerd Font'
-- local italic_font = 'Ellograph CF'
-- local italic_font = 'ConsolasLigaturizedV3 Nerd Font'
local italic_font = default_font.italic_font
local font_rules = {
   {
      intensity = 'Bold',
      italic = true,
      font = wezterm.font({
         family = italic_font,
         weight = 'Bold',
         style = 'Italic',
      }),
   },
   {
      italic = true,
      intensity = 'Half',
      font = wezterm.font({
         family = italic_font,
         weight = 'DemiBold',
         style = 'Italic',
      }),
   },
   {
      italic = true,
      intensity = 'Normal',
      font = wezterm.font({
         family = italic_font,
         weight = default_font.italic_weight,
         style = 'Italic',
         harfbuzz_features = default_font.italic_feature,
      }),
   },
}

return {
   font = wezterm.font(font),
   font_size = font_size,
   font_rules = font_rules,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
