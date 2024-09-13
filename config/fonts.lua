local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font = 'JetBrainsMono Nerd Font'
local font_size = 11
local font = {
   -- family = "Carto Lisa",
   -- family = "JetBrainsMono NF",
   family = 'MonoLisa Nerd Font',
   -- family = 'ConsolasLigaturizedV3 Nerd Font',
   harfbuzz_features = {
      'liga',
      'ss02',
      'ss03', -- alter g
      -- "ss04", -- alter g
      'ss07',
      'ss11',
      'ss12',
      'ss14',
   },
}

-- local italic_font = 'CartographCF Nerd Font'
local italic_font = 'Maple Mono NF'
-- local italic_font = 'ConsolasLigaturizedV3 Nerd Font'
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
         weight = 'Regular',
         style = 'Italic',
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
