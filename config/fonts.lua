local wezterm = require('wezterm')
local platform = require('utils.platform')

local general = {
   -- family = 'Code Saver',
   family = 'InconsolataGo Nerd Font',
   -- family = 'Inconsolata LGC Nerd Font',
   -- family = 'ConsolasLigaturizedV3 Nerd Font',
   -- family = 'OverpassM Nerd Font Mono',
}

local inconsolata = {
   family = 'Inconsolata',
   feature = {
      'dlig',
   },
}

local MonoLisa = {
   family = 'MonoLisa',
   feature = {
      'liga',
      'ss02',
      'ss03', -- alter g
      'ss07',
      'ss11',
      'ss12',
      'ss14',
   },
}

local MonaspaceArgon = {
   family = 'Monaspace Xenon',
   feature = {
      -- 'cv10',
      'liga',
      'calt',
      'ss01',
      'ss02',
      'ss03', -- alter g
      'ss04',
      'ss05',
      'ss06',
      'ss07',
      'ss08',
      'ss09',
      'ss10',
   },
}

local font_size_map = {
   ['Inconsolata'] = 17.0,
   ['Inconsolata LGC Nerd Font'] = 17.0,
   ['InconsolataGo Nerd Font'] = 17.0,
   ['MonoLisa'] = 13.0,
   ['ConsolasLigaturizedV3 Nerd Font'] = 16.0,
}
local default_font = MonaspaceArgon

-- local font = 'JetBrainsMono Nerd Font'
local font_size = font_size_map[default_font.family] or 14.0
local font = {
   family = default_font.family,
   harfbuzz_features = default_font.feature,
}

return {
   font = wezterm.font(font),
   font_size = font_size,
   -- font_rules = font_rules,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
