local wezterm = require('wezterm')
local platform = require('utils.platform')

local general = {
   -- family = 'JetBrainsMono Nerd Font',
   -- family = 'Code Saver',
   -- family = 'InconsolataGo Nerd Font',
   -- family = 'MartianMono Nerd Font',
   -- family = 'GeistMono Nerd Font',
   -- family = 'IntoneMono Nerd Font',
   -- family = 'Red Hat Mono',
   -- family = 'Indicate Mono',
   -- family = 'Hasklug Nerd Font',
   -- family = 'Google Sans Code',
   -- family = 'Cascadia Code',
   -- family = 'SauceCodePro Nerd Font',
   -- family = 'RobotoMono Nerd Font',
   -- family = 'Inconsolata LGC Nerd Font',
   -- family = 'Consolas',
   family = 'UbuntuSansMono Nerd Font',
   -- family = 'Courier New',
   -- family = 'OldTimeyCode Nerd Font',
   -- family = 'OverpassM Nerd Font Mono',
   -- family = 'ConsolasLigaturizedV3',
}

local Fira = {
   family = 'FiraCode Nerd Font',
   feature = {
      'cv17',
      'ss05',
      'ss04',
      'ss03',
   },
}

local inconsolata = {
   family = 'Inconsolata',
   feature = {
      'dlig',
   },
}

local JetBrainsMono = {
   family = 'JetBrainsMono Nerd Font',
   feature = {
      'cv14',
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
      -- 'ss14',
   },
}

local MonaspaceArgon = {
   -- family = 'Monaspace Neon',
   family = 'Monaspace Xenon',
   -- family = 'Monaspace Argon',
   feature = {
      -- 'cv10', -- alter i
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
   ['Inconsolata'] = 16.0,
   ['Inconsolata LGC Nerd Font'] = 14.0,
   ['InconsolataGo Nerd Font'] = 16.0,
   ['MartianMono Nerd Font'] = 12.0,
   ['Code Saver'] = 15.0,
   ['MonoLisa'] = 14,
   ['ConsolasLigaturizedV3 Nerd Font'] = 16.0,
   ['Consolas'] = 14.5,
   ['Monaspace Argon'] = 14.0,
   ['Monaspace Xenon'] = 14.0,
   ['JetBrainsMono Nerd Font'] = 14.0,
   ['IntoneMono Nerd Font'] = 14.0,
   ['UbuntuSansMono Nerd Font'] = 14.0,
}

local line_height_map = {
   ['MonoLisa'] = 1,
   ['Monaspace Argon'] = 1,
   ['Monaspace Xenon'] = 1,
   ['Consolas'] = 1.2,
   ['GeistMono Nerd Font'] = 0.95,
   ['OldTimeyCode Nerd Font'] = 1.2,
   ['MartianMono Nerd Font'] = 1.1,
   -- ['JetBrainsMono Nerd Font'] = 1.2,
   ['UbuntuSansMono Nerd Font'] = 1.1,
   -- ['IntoneMono Nerd Font'] = 0.95,
}
-- local default_font = MonaspaceArgon
-- local default_font = Fira
-- local default_font = MonoLisa
-- local default_font = general
local default_font = JetBrainsMono

local line_height = line_height_map[default_font.family] or 1.0

-- local font = 'JetBrainsMono Nerd Font'
local font_size = font_size_map[default_font.family] or 14.0
local font = {
   family = default_font.family,
   harfbuzz_features = default_font.feature,
   -- weight=500
}

return {
   font = wezterm.font(font),
   font_size = font_size,
   line_height = line_height,
   -- font_rules = font_rules,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
