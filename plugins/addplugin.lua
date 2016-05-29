local function run(msg, matches)
  local text = matches[1]
  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
    if not is_sudo(msg) then
    return 'ADD PLUGINS ONLY BY SUDO😁'
  end
  local name = matches[2]
  local file = io.open("./"..name, "w")
  file:write(text)
  file:flush()
  file:close()
  return "done😊"
 end
 return {
  description = "a Usefull plugin for sudo !",
  usage = "A plugins to add Another plugins to the server",
  patterns = {
    "^[/#!]plugin (.+) (.*)$"
  },
  run = run
}
