-- Bootstrap luvit-loader for either luvi or normal lua environment.
local success, luvi = pcall(require, 'luvi')
if success then
  loadstring(luvi.bundle.readfile("luvit-loader.lua"), "bundle:luvit-loader.lua")()
else
  dofile("luvit-loader.lua")
end
local uv = require('uv')
local pathJoin = require('pathjoin').pathJoin
local meta = require('./package')

print(meta.name .. ' v' .. meta.version)
local root, port, host = ...
if not root then
  print("Usage:\n\tsimple-http-server path [port] [host]")
  return -1
end
if root:sub(1,1) ~= "/" then
  root = pathJoin(uv.cwd(), root)
end
if port then port = tonumber(port) end

print("Root path: " .. root)

require('weblit-app')

  .bind {
    host = host,
    port = port
  }

  .use(require('weblit-logger'))
  .use(require('weblit-auto-headers'))
  .use(require('weblit-etag-cache'))

  .use(require('weblit-cors'))

  .use(require('weblit-static')(root))

  .start()

uv.run()
