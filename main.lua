-- Bootstrap luvit-loader for either luvi or normal lua environment.
local success, luvi = pcall(require, 'luvi')
if success then
  loadstring(luvi.bundle.readfile("luvit-loader.lua"), "bundle:luvit-loader.lua")()
else
  dofile("luvit-loader.lua")
end
local uv = require('uv')

local root, port = ...
if not root then root = uv.cwd() end
if port then port = tonumber(port) end

require('weblit-app')

  .bind {
    port = port
  }

  .use(require('weblit-logger'))
  .use(require('weblit-auto-headers'))
  .use(require('weblit-etag-cache'))

  .use(require('weblit-static')(root))

  .start()

uv.run()
