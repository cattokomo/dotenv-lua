# dotenv-lua
A ".env" parser for Lua

## Usage
```lua
require 'dotenv'.config('path/to/.env') -- Defaults to "./.env"

-- The environment variable is shipped into "debug.env"

print(debug.env.TEST) -- Prints out "test"
```

## Installation
If you're using [Luvit](https://luvit.io), you can use `lit` for installing dotenv-lua
```bash
lit install UrNightmaree/dotenv
```
Or if you're using native Lua, you can  use [`luarocks`](https://luarocks.org) to install dotenv-lua
```bash
luarocks install dotenv
```
