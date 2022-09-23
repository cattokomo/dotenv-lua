function string.split(self, delim, plain)
	local ret = {}

	if not self or self == '' then
		return ret
	end

	if not delim or delim == '' then
		for i = 1, #self do
			ret[i] = string.byte(self, i)
		end

		return ret
	end

	local p = 1
	while true do
		local i, j = string.find(self, delim, p, plain)
		if not i then
			break
		end

		table.insert(ret, string.sub(self, p, i - 1))
		p = j + 1
	end

	table.insert(ret, string.sub(self, p))
	return ret
end

local function parser(src)
  local tbl = {}

  for _,var in pairs(src:split '\n') do
    local linevar = var:split '='

    local vname = linevar[1]
    local val = linevar[2]

    if val then
      local noquote = val:gsub('^[\'"]',''):gsub('[\'"]$','')
      tbl[vname] = noquote
    end
  end

  return tbl
end

local function config(path)
  path = path or './.env'
  if not path:find '.env' then
    error 'Must be a .env file!'
  end

  local file = assert(io.open(path,'rb'),'Invalid path!')
  local data
  if _VERSION >= 'Lua 5.3' then
    data = file:read 'a'; file:close()
  else
    data = file:read '*a'; file:close()
  end

  debug.env = parser(data)
  
end

return {
  config = config
}
