return {
  name = "creationix/simple-http-server",
  version = "0.0.7",
  description = "A simple luvi app that creates a local http server using weblit",
  tags = {"weblit","http-server","app","static"},
  homepage = "https://github.com/creationix/simple-http-server",
  luvi = {
    flavor = "tiny"
  },
  files = {
    "*.lua"
  },
  license = "MIT",
  dependencies = {
    "creationix/weblit-app",
    "creationix/weblit-logger",
    "creationix/weblit-cors",
    "creationix/weblit-auto-headers",
    "creationix/weblit-etag-cache",
    "creationix/weblit-static",
    "creationix/pathjoin",
    "luvit/json",
  }
}
