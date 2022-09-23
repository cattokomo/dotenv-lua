# dotenv-lua
A ".env" parser for Lua

## Usage
```lua
require 'dotenv'.config('path/to/.env') -- Defaults to "./.env"

--[[
  THIS WILL ONLY WORK BEFORE "luarocks-dotenv@1.0.1-1" AND "lit-dotenv@1.0.2"!!

  -- The environment variable is shipped into "debug.env"

  print(debug.env.VARNAME) -- Prints out the value of the environment variable
]]

-- The environment variable is shipped into "os.env"

print(os.env.VARNAME) -- Prints out the value of the environment variable
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
