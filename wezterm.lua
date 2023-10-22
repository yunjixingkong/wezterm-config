local wezterm = require('wezterm')

local Config = require('config')
local appearance=require('config.appearance')
local bindings=require('config.bindings')
local domains=require('config.domains')
local fonts=require('config.fonts')
local general=require('config.general')
local launch=require('config.launch')


require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

-- wezterm.log_info('appearance: ', appearance)
-- wezterm.log_info('bindings: ', bindings)
-- wezterm.log_info('domains: ', domains)
-- wezterm.log_info('fonts: ', fonts)
-- wezterm.log_info('general: ', general)
-- wezterm.log_info('launch: ', launch)

local conf=Config:init()
conf=conf:append(appearance)
conf=conf:append(bindings)
conf=conf:append(domains)
conf=conf:append(fonts)
conf=conf:append(general)
-- conf=conf:append(launch)
return conf.options
-- return Config:init()
--    -- :append(require('config.appearance'))
--    -- :append(require('config.bindings'))
--    -- :append(require('config.domains'))
--    -- :append(require('config.fonts'))
--    -- :append(require('config.general'))
--    -- :append(require('config.launch'))
--    .options
