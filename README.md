> This is repository archived and outdated, please use [redotenv.lua](https://github.com/UrNightmaree/redotenv.lua).

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

## Comparison
 - Luvit
   - [**4keef/Dotenv**](https://github.com/4keef/Dotenv) - Splits all `=` character, include inside variable value.
 - Lua
   - No Module can be compared
