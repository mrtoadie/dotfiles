-- ~/.config/yazi/preview/markdown.lua
local utils = require("utils")

return function(file)
-- `glow` rendert Markdown als farbigen Terminal‑Text
local cmd = { "glow", "-s", "dark", "--width", tostring(utils.max_width()), file.path }
return utils.run(cmd)
end
