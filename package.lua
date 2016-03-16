return {
  name = "creationix/simple-http-server",
  version = "0.0.1",
  luvi = {
    version = "2.6.1",
    flavor = "tiny"
  },
  description = "A simple luvi app that creates a local http server using weblit",
  tags = {"weblit","http-server","app","static"},
  homepage = "https://github.com/creationix/simple-http-server",
  license = "MIT",
  dependencies = {
    "creationix/weblit-app",
    "creationix/weblit-logger",
    "creationix/weblit-auto-headers",
    "creationix/weblit-etag-cache",
    "creationix/weblit-static",
    "luvit/json",
  }
}
